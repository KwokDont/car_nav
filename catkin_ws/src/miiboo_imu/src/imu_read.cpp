/*
HI219出厂默认输出协议接收:
输出 sum = 41
0x5A+0xA5+LEN_LOW+LEN_HIGH+CRC_LOW+CRC_HIGH+ 0x90+ID(1字节) + 0xA0+Acc(加速度6字节) + 0xB0+Gyo(角速度6字节) + 0xC0+Mag(地磁6字节) + 0xD0 +AtdE(欧拉角6字节) + 0xF0+Pressure(压力4字节)
*/
#include "ros/ros.h"
#include "sensor_msgs/Imu.h"
#include "tf/transform_broadcaster.h"

#include <iostream>
#include <boost/asio.hpp>
#include <boost/bind.hpp>
#include <string>

using namespace std;
using namespace boost::asio;


#define MAX_PACKET_LEN          (41)// length of the data

typedef enum
{
    kItemID =                   0x90,   /* user programed ID    size: 1 */
    kItemIPAdress =             0x92,   /* ip address           size: 4 */
    kItemAccRaw =               0xA0,   /* raw acc              size: 3x2 */
    kItemAccRawFiltered =       0xA1,
    kItemAccDynamic =           0xA2,
    kItemGyoRaw =               0xB0,   /* raw gyro             size: 3x2 */
    kItemGyoRawFiltered =       0xB1,
    kItemMagRaw =               0xC0,   /* raw mag              size: 3x2 */
    kItemMagRawFiltered =       0xC1,
    kItemAtdE =                 0xD0,   /* eular angle          size:3x2 */
    kItemAtdQ =                 0xD1,   /* att q,               size:4x4 */
    kItemTemp =                 0xE0,
    kItemPressure =             0xF0,   /* pressure             size:1x4 */
    kItemEnd =                  0xFF,
}ItemID_t;

uint8_t ID;
int16_t AccRaw[3];
int16_t GyoRaw[3];
int16_t MagRaw[3];
float Eular[3];
int32_t Pressure;

int main(int argc, char **argv)
{
    ros::init(argc, argv, "imu_read_node");
    ros::NodeHandle n;
    ros::Publisher imu_pub = n.advertise<sensor_msgs::Imu>("imu", 1000);
    
    string com_port = "/dev/ttyUSB0";
    string imu_frame_id = "imu_link";
    ros::param::get("~com_port",com_port);
    ros::param::get("~imu_frame_id",imu_frame_id);

    io_service iosev;
    serial_port sp(iosev, com_port);
    sp.set_option(serial_port::baud_rate(115200));
    sp.set_option(serial_port::flow_control(serial_port::flow_control::none));
    sp.set_option(serial_port::parity(serial_port::parity::none));
    sp.set_option(serial_port::stop_bits(serial_port::stop_bits::one));
    sp.set_option(serial_port::character_size(8));

    int count = 0;
    ros::Rate loop_rate(1000);
    while (ros::ok())
    {
        // 向串口写数据
        // write(sp, buffer("Hello world", 12));

        // 向串口读数据
        uint8_t buf_tmp[1];
        uint8_t buf[MAX_PACKET_LEN-1];
        read(sp, buffer(buf_tmp));
        if(buf_tmp[0] == 0x5A )
        {
            read(sp, buffer(buf));

            sensor_msgs::Imu imu_msg;
            imu_msg.header.stamp = ros::Time::now();
            imu_msg.header.seq = count;
            imu_msg.header.frame_id =  imu_frame_id;

            /* 
            按出厂默认输出协议接收:
            0x5A+0xA5+LEN_LOW+LEN_HIGH+CRC_LOW+CRC_HIGH+ 0x90+ID(1字节) + 0xA0+Acc(加速度6字节) + 0xB0+Gyo(角速度6字节) + 0xC0+Mag(地磁6字节) + 0xD0 +AtdE(欧拉角6字节) + 0xF0+Pressure(压力4字节)
            */
            int i=0;
            if(buf[i] == 0xA5) /* user ID */
            {
                               
                i+=5;//moving right 5bit to 0x90

                //user ID
                if(buf[i+0] == kItemID) 
                {
                    ID = buf[i+1];
                }
                //Acc value
                if(buf[i+2] == kItemAccRaw)
                {
                    memcpy(AccRaw, &buf[i+3], 6);
                    imu_msg.linear_acceleration.x =AccRaw[0]* 9.7887/1000.0;
                    imu_msg.linear_acceleration.y =AccRaw[1]* 9.7887/1000.0;
                    imu_msg.linear_acceleration.z =AccRaw[2]* 9.7887/1000.0;
                }
                //Gyro value
                if(buf[i+9] == kItemGyoRaw)
                {
                    memcpy(GyoRaw, &buf[i+10], 6);
                    imu_msg.angular_velocity.x = GyoRaw[0]*M_PI/10.0/180.0;
                    imu_msg.angular_velocity.y = GyoRaw[1]*M_PI/10.0/180.0;
                    imu_msg.angular_velocity.z = GyoRaw[2]*M_PI/10.0/180.0;
                }
                //Mag value
                if(buf[i+16] == kItemMagRaw)
                {
                    memcpy(MagRaw, &buf[i+17], 6);
                }
                //atd E
                if(buf[i+23] == kItemAtdE)
                {
                    Eular[0] = ((float)(int16_t)(buf[i+24] + (buf[i+25]<<8)))/100;
                    Eular[1] = ((float)(int16_t)(buf[i+26] + (buf[i+27]<<8)))/100;
                    Eular[2] = ((float)(int16_t)(buf[i+28] + (buf[i+29]<<8)))/10;
                    geometry_msgs::Quaternion quat = tf::createQuaternionMsgFromRollPitchYaw(Eular[0], Eular[1], Eular[2]);
                    imu_msg.orientation = quat;
                    //imu_msg.linear_acceleration_covariance=boost::array<double, 9>
                }
                //Pressure value
                if(buf[i+30] == kItemPressure)
                {
                    memcpy(&Pressure, &buf[i+31], 4);
                }
                
                //debug
                /*
                printf("ID: %d \r\n", ID);
                printf("AccRaw: %d %d %d\r\n", AccRaw[0], AccRaw[1], AccRaw[2]);
                printf("GyoRaw: %f %f %f\r\n", GyoRaw[0], GyoRaw[1], GyoRaw[2]);
                printf("MagRaw: %d %d %d\r\n", MagRaw[0], MagRaw[1], MagRaw[2]);
                printf("Eular: %0.2f %0.2f %0.2f\r\n", Eular[1], Eular[0], Eular[2]);
                printf("Pressure: %d Pa\r\n\n", Pressure);
                */

                imu_pub.publish(imu_msg);

                //ros::spinOnce();
                //loop_rate.sleep();

                count++;
            }
        }
    }//while end

    iosev.run();
    return 0;
}
