/*
 * Copyright (C) 2014 Oliver Degener.
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not
 * use this file except in compliance with the License. You may obtain a copy of
 * the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations under
 * the License.
 */

package org.miiboo;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ToggleButton;

import com.github.rosjava.android_apps.map_nav.R;
import com.github.rosjava.android_remocons.common_tools.apps.RosAppActivity;
import com.google.common.base.Preconditions;
import com.google.common.collect.Lists;

import org.ros.address.InetAddressFactory;
import org.ros.android.BitmapFromCompressedImage;
import org.ros.android.view.RosImageView;
import org.ros.android.view.VirtualJoystickView;
import org.ros.android.view.visualization.VisualizationView;
import org.ros.android.view.visualization.layer.CameraControlListener;
import org.ros.android.view.visualization.layer.LaserScanLayer;
import org.ros.android.view.visualization.layer.Layer;
import org.ros.android.view.visualization.layer.OccupancyGridLayer;
import org.ros.android.view.visualization.layer.PathLayer;
import org.ros.android.view.visualization.layer.RobotLayer;
import org.ros.namespace.NameResolver;
import org.ros.node.NodeConfiguration;
import org.ros.node.NodeMainExecutor;
import org.ros.time.NtpTimeProvider;
import org.ros.time.TimeProvider;
import org.ros.time.WallTimeProvider;
import java.util.concurrent.TimeUnit;
import sensor_msgs.CompressedImage;
//import com.github.rosjava.android_remocons.common_tools.apps.RosAppActivity;
public class MainActivity extends RosAppActivity {
    private static final String TAG = "MapNav";
    private RosImageView<CompressedImage> cameraView;
    private VirtualJoystickView virtualJoystickView;
    private VisualizationView mapView;
    private ViewGroup mainLayout;
    private ViewGroup sideLayout;
    private static final String MAP_FRAME = "map";
    private static final String ROBOT_FRAME = "base_link";
    //private Button backButton;
    private MapPosePublisherLayer mapPosePublisherLayer;
    private NodeMainExecutor nodeMainExecutor;
    private NodeConfiguration nodeConfiguration;
    private ToggleButton followMeToggleButton;
    public MainActivity() {
        // The RosActivity constructor configures the notification title and
        // ticker
        // messages.
        super("Map nav", "Map nav");
    }
    @Override
    public void onCreate(Bundle savedInstanceState) {
        String defaultRobotName = getString(R.string.default_robot);
        String defaultAppName = getString(R.string.default_app);
        setDefaultMasterName(defaultRobotName);
        setDefaultAppName(defaultAppName);
        setDashboardResource(R.id.top_bar);
        setMainWindowResource(R.layout.activity_main);
        super.onCreate(savedInstanceState);
        followMeToggleButton = (ToggleButton) findViewById(R.id.follow_me_toggle_button);
        cameraView = (RosImageView<sensor_msgs.CompressedImage>) findViewById(R.id.image);
        cameraView.setMessageType(sensor_msgs.CompressedImage._TYPE);
        cameraView.setMessageToBitmapCallable(new BitmapFromCompressedImage());
        virtualJoystickView = (VirtualJoystickView) findViewById(R.id.virtual_joystick);
        //backButton = (Button) findViewById(R.id.back_button);
        mapView = (VisualizationView) findViewById(R.id.map_view);
        mapView.onCreate(Lists.<Layer>newArrayList());

        /*backButton.setOnClickListener(new View.OnClickListener() {
			@Override
			public void onClick(View view) {
				onBackPressed();
			}
		});*/

        mapView.getCamera().jumpToFrame((String) params.get("map_frame", getString(R.string.map_frame)));
        mainLayout = (ViewGroup) findViewById(R.id.main_layout);
        sideLayout = (ViewGroup) findViewById(R.id.side_layout);
    }

    @Override
    protected void init(NodeMainExecutor nodeMainExecutor) {

        super.init(nodeMainExecutor);

        this.nodeMainExecutor = nodeMainExecutor;
        nodeConfiguration = NodeConfiguration.newPublic(InetAddressFactory
                .newNonLoopback().getHostAddress(), getMasterUri());

        String joyTopic = remaps.get(getString(R.string.joystick_topic));
        String camTopic = remaps.get(getString(R.string.camera_topic));

        NameResolver appNameSpace = getMasterNameSpace();
        cameraView.setTopicName(appNameSpace.resolve(camTopic).toString());
        virtualJoystickView.setTopicName(appNameSpace.resolve(joyTopic).toString());

        nodeMainExecutor.execute(cameraView,
                nodeConfiguration.setNodeName("android/camera_view"));
        nodeMainExecutor.execute(virtualJoystickView,
                nodeConfiguration.setNodeName("android/virtual_joystick"));

        ViewLayer viewLayer =
                new ViewLayer(this,
                        nodeMainExecutor.getScheduledExecutorService(), cameraView,
                        mapView, mainLayout, sideLayout, params);

        String mapTopic      = remaps.get(getString(R.string.map_topic));
        //String costmapTopic  = remaps.get(getString(R.string.costmap_topic));
        String scanTopic     = remaps.get(getString(R.string.scan_topic));
        String planTopic     = remaps.get(getString(R.string.global_plan_topic));
        String initTopic     = remaps.get(getString(R.string.initial_pose_topic));
        String robotFrame    = (String) params.get("robot_frame", getString(R.string.robot_frame));

        OccupancyGridLayer mapLayer = new OccupancyGridLayer(appNameSpace.resolve(mapTopic).toString());
        //OccupancyGridLayer costmapLayer = new OccupancyGridLayer(appNameSpace.resolve(costmapTopic).toString());
        LaserScanLayer laserScanLayer = new LaserScanLayer(appNameSpace.resolve(scanTopic).toString());
        PathLayer pathLayer = new PathLayer(appNameSpace.resolve(planTopic).toString());
        mapPosePublisherLayer = new MapPosePublisherLayer(this, appNameSpace, params, remaps);

        RobotLayer robotLayer = new RobotLayer(robotFrame);
        mapView.addLayer(viewLayer);
        mapView.addLayer(mapLayer);
        //mapView.addLayer(costmapLayer);
        mapView.addLayer(laserScanLayer);
        mapView.addLayer(pathLayer);
        mapView.addLayer(mapPosePublisherLayer);
        mapView.addLayer(robotLayer);

        mapView.init(nodeMainExecutor);
        viewLayer.addListener(new CameraControlListener() {
            @Override
            public void onZoom(float focusX, float focusY, float factor) {}
            @Override
            public void onDoubleTap(float x, float y) {}
            @Override
            public void onTranslate(float distanceX, float distanceY) {}
            @Override
            public void onRotate(float focusX, float focusY, double deltaAngle) {}
        });

        TimeProvider timeProvider = null;
        try {
            NtpTimeProvider ntpTimeProvider = new NtpTimeProvider(
                    InetAddressFactory.newFromHostString("pool.ntp.org"),
                    nodeMainExecutor.getScheduledExecutorService());
            ntpTimeProvider.startPeriodicUpdates(1, TimeUnit.MINUTES);
            timeProvider = ntpTimeProvider;
        } catch (Throwable t) {
            Log.w(TAG, "Unable to use NTP provider, using Wall Time. Error: " + t.getMessage(), t);
            timeProvider = new WallTimeProvider();
        }
        nodeConfiguration.setTimeProvider(timeProvider);
        nodeMainExecutor.execute(mapView, nodeConfiguration.setNodeName("android/map_view"));
    }

    public void setPoseClicked(View view) {
        setPose();
    }

    public void setGoalClicked(View view) {
        setGoal();
    }

    private void setPose() {
        mapPosePublisherLayer.setPoseMode();
    }

    private void setGoal() {
        mapPosePublisherLayer.setGoalMode();
    }


    public void onFollowMeToggleButtonClicked(View view) {
        boolean on = ((ToggleButton) view).isChecked();
        if (on) {
            enableFollowMe();
        } else {
            disableFollowMe();
        }
    }

    private void enableFollowMe() {
        Preconditions.checkNotNull(mapView);
        Preconditions.checkNotNull(followMeToggleButton);
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                mapView.getCamera().jumpToFrame(ROBOT_FRAME);
                followMeToggleButton.setChecked(true);
            }
        });
    }

    private void disableFollowMe() {
        Preconditions.checkNotNull(mapView);
        Preconditions.checkNotNull(followMeToggleButton);
        runOnUiThread(new Runnable() {
            @Override
            public void run() {
                mapView.getCamera().setFrame(MAP_FRAME);
                followMeToggleButton.setChecked(false);
            }
        });
    }

}