# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(costmap_2d_CONFIG_INCLUDED)
  return()
endif()
set(costmap_2d_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("FALSE" STREQUAL "TRUE")
  set(costmap_2d_SOURCE_PREFIX /home/ubuntu/catkin_ws_nav/src/navigation-kinetic-devel/costmap_2d)
  set(costmap_2d_DEVEL_PREFIX /home/ubuntu/catkin_ws_nav/devel)
  set(costmap_2d_INSTALL_PREFIX "")
  set(costmap_2d_PREFIX ${costmap_2d_DEVEL_PREFIX})
else()
  set(costmap_2d_SOURCE_PREFIX "")
  set(costmap_2d_DEVEL_PREFIX "")
  set(costmap_2d_INSTALL_PREFIX /home/ubuntu/catkin_ws_nav/install)
  set(costmap_2d_PREFIX ${costmap_2d_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'costmap_2d' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(costmap_2d_FOUND_CATKIN_PROJECT TRUE)

if(NOT "include;/usr/include/pcl-1.7;/usr/include/eigen3;/usr/include;/usr/include/ni;/usr/include/vtk-6.2;/usr/include/hdf5/openmpi;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi;/usr/include/freetype2;/usr/include/arm-linux-gnueabihf/freetype2;/usr/include/arm-linux-gnueabihf;/usr/include/libxml2;/usr/include/python2.7;/usr/include/jsoncpp;/usr/include/tcl " STREQUAL " ")
  set(costmap_2d_INCLUDE_DIRS "")
  set(_include_dirs "include;/usr/include/pcl-1.7;/usr/include/eigen3;/usr/include;/usr/include/ni;/usr/include/vtk-6.2;/usr/include/hdf5/openmpi;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent;/usr/lib/openmpi/include/openmpi/opal/mca/event/libevent2021/libevent/include;/usr/lib/openmpi/include;/usr/lib/openmpi/include/openmpi;/usr/include/freetype2;/usr/include/arm-linux-gnueabihf/freetype2;/usr/include/arm-linux-gnueabihf;/usr/include/libxml2;/usr/include/python2.7;/usr/include/jsoncpp;/usr/include/tcl")
  if(NOT " " STREQUAL " ")
    set(_report "Check the issue tracker '' and consider creating a ticket if the problem has not been reported yet.")
  elseif(NOT "http://wiki.ros.org/costmap_2d " STREQUAL " ")
    set(_report "Check the website 'http://wiki.ros.org/costmap_2d' for information and consider reporting the problem.")
  else()
    set(_report "Report the problem to the maintainer 'David V. Lu!! <davidvlu@gmail.com>, Michael Ferguson <mfergs7@gmail.com>, Aaron Hoy <ahoy@fetchrobotics.com>' and request to fix the problem.")
  endif()
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${costmap_2d_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'costmap_2d' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  ${_report}")
      endif()
    else()
      message(FATAL_ERROR "Project 'costmap_2d' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/ubuntu/catkin_ws_nav/install/${idir}'.  ${_report}")
    endif()
    _list_append_unique(costmap_2d_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "costmap_2d;layers;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_common.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_common.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_octree.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_octree.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_io.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_io.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_kdtree.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_kdtree.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_search.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_search.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_sample_consensus.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_sample_consensus.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_filters.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_filters.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_features.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_features.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_keypoints.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_keypoints.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_segmentation.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_segmentation.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_visualization.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_visualization.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_outofcore.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_outofcore.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_surface.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_surface.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_tracking.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_tracking.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_registration.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_registration.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_recognition.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_recognition.so;optimized;/usr/lib/arm-linux-gnueabihf/libpcl_people.so;debug;/usr/lib/arm-linux-gnueabihf/libpcl_people.so;/usr/lib/arm-linux-gnueabihf/libboost_filesystem.so;/usr/lib/arm-linux-gnueabihf/libboost_iostreams.so;/usr/lib/arm-linux-gnueabihf/libboost_serialization.so;/usr/lib/arm-linux-gnueabihf/libboost_regex.so;optimized;/usr/lib/arm-linux-gnueabihf/libqhull.so;debug;/usr/lib/arm-linux-gnueabihf/libqhull.so;/usr/lib/libOpenNI.so;optimized;/usr/lib/arm-linux-gnueabihf/libflann_cpp_s.a;debug;/usr/lib/arm-linux-gnueabihf/libflann_cpp_s.a;/usr/lib/arm-linux-gnueabihf/libvtkParallelCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtksys-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOLegacy-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonDataModel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonMath-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonMisc-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonSystem-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonTransforms-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonExecutionModel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libz.so;/usr/lib/arm-linux-gnueabihf/libvtkFiltersAMR-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersGeneral-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonComputationalGeometry-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOMPIImage-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOImage-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkDICOMParser-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkmetaio-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libjpeg.so;/usr/lib/arm-linux-gnueabihf/libpng.so;/usr/lib/arm-linux-gnueabihf/libtiff.so;/usr/lib/arm-linux-gnueabihf/libvtkParallelMPI-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersImaging-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersStatistics-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingFourier-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkalglib-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingGeneral-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingSources-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkCommonColor-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersExtraction-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersGeometry-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersSources-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOInfovis-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOXML-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOGeometry-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libjsoncpp.so;/usr/lib/arm-linux-gnueabihf/libvtkIOXMLParser-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libexpat.so;/usr/lib/arm-linux-gnueabihf/libvtkInfovisCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libxml2.so;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallelMPI-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersModeling-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingLIC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingOpenGL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingHybrid-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingFreeType-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libfreetype.so;/usr/lib/arm-linux-gnueabihf/libvtkftgl-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOFFMPEG-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOMovie-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libtheoraenc.so;/usr/lib/arm-linux-gnueabihf/libtheoradec.so;/usr/lib/arm-linux-gnueabihf/libogg.so;/usr/lib/arm-linux-gnueabihf/libvtkImagingMorphological-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersVerdict-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkverdict-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallelFlowPaths-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersFlowPaths-6.2.so.6.2.0;/usr/lib/libgl2ps.so;/usr/lib/arm-linux-gnueabihf/libvtkIOMySQL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOSQL-6.2.so.6.2.0;sqlite3;/usr/lib/arm-linux-gnueabihf/libvtkIOExodus-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkexoIIc-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libnetcdf_c++.so;/usr/lib/arm-linux-gnueabihf/libnetcdf.so;/usr/lib/arm-linux-gnueabihf/hdf5/openmpi/lib/libhdf5.so;/usr/lib/arm-linux-gnueabihf/libsz.so;/usr/lib/arm-linux-gnueabihf/libdl.so;/usr/lib/arm-linux-gnueabihf/libm.so;/usr/lib/arm-linux-gnueabihf/hdf5/openmpi/lib/libhdf5_hl.so;/usr/lib/openmpi/lib/libmpi.so;/usr/lib/arm-linux-gnueabihf/libvtkVPIC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkWrappingPython27Core-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libpython2.7.so;/usr/lib/libvtkWrappingTools-6.2.a;/usr/lib/arm-linux-gnueabihf/libvtkGeovisCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkInfovisLayout-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkInteractionStyle-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkInteractionWidgets-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersHybrid-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingAnnotation-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingColor-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingVolume-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkViewsCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkproj4-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOExport-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingContext2D-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingGL2PS-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingContextOpenGL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingLabel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkInteractionImage-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersSMP-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingLOD-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOXdmf2-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkxdmf2-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIONetCDF-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOPLY-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOMINC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingMath-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkViewsContext2D-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingParallel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOImport-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersProgrammable-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingMatplotlib-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkPythonInterpreter-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOGDAL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOLSDyna-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingStatistics-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkDomainsChemistry-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOParallelXML-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOEnSight-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOParallel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkTestingRendering-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkTestingGenericBridge-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkViewsInfovis-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkChartsCore-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingParallelLIC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOVPIC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOParallelNetCDF-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOMPIParallel-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersReebGraph-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersPython-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkWrappingJava-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersSelection-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingImage-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersHyperTree-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingFreeTypeFontConfig-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOParallelExodus-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallelGeometry-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersGeneric-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersTexture-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOAMR-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkViewsGeovis-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallelImaging-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOParallelLSDyna-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingExternal-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOODBC-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkImagingStencil-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkTestingIOSQL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkParallelMPI4Py-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkInfovisBoostGraphAlgorithms-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkFiltersParallelStatistics-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingVolumeOpenGL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOGeoJSON-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOVideo-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkRenderingFreeTypeOpenGL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkLocalExample-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libvtkIOPostgreSQL-6.2.so.6.2.0;/usr/lib/arm-linux-gnueabihf/libboost_system.so;/usr/lib/arm-linux-gnueabihf/libboost_thread.so;/usr/lib/arm-linux-gnueabihf/libboost_chrono.so;/usr/lib/arm-linux-gnueabihf/libboost_date_time.so;/usr/lib/arm-linux-gnueabihf/libboost_atomic.so;/usr/lib/arm-linux-gnueabihf/libpthread.so")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND costmap_2d_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND costmap_2d_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND costmap_2d_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/ubuntu/catkin_ws_nav/install/lib;/home/ubuntu/catkin_ws_carto/install_isolated/lib;/home/ubuntu/catkin_ws/devel/lib;/opt/ros/kinetic/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(costmap_2d_LIBRARY_DIRS ${lib_path})
      list(APPEND costmap_2d_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'costmap_2d'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND costmap_2d_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(costmap_2d_EXPORTED_TARGETS "costmap_2d_generate_messages_cpp;costmap_2d_generate_messages_eus;costmap_2d_generate_messages_lisp;costmap_2d_generate_messages_nodejs;costmap_2d_generate_messages_py;costmap_2d_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${costmap_2d_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "dynamic_reconfigure;geometry_msgs;laser_geometry;map_msgs;message_filters;message_runtime;nav_msgs;pcl_ros;pluginlib;roscpp;sensor_msgs;std_msgs;tf;visualization_msgs;voxel_grid")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 costmap_2d_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${costmap_2d_dep}_FOUND)
      find_package(${costmap_2d_dep} REQUIRED NO_MODULE)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${costmap_2d_dep} REQUIRED NO_MODULE ${depend_list})
  endif()
  _list_append_unique(costmap_2d_INCLUDE_DIRS ${${costmap_2d_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(costmap_2d_LIBRARIES ${costmap_2d_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${costmap_2d_dep}_LIBRARIES})
  _list_append_deduplicate(costmap_2d_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(costmap_2d_LIBRARIES ${costmap_2d_LIBRARIES})

  _list_append_unique(costmap_2d_LIBRARY_DIRS ${${costmap_2d_dep}_LIBRARY_DIRS})
  list(APPEND costmap_2d_EXPORTED_TARGETS ${${costmap_2d_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "costmap_2d-msg-extras.cmake")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${costmap_2d_DIR}/${extra})
  endif()
  include(${extra})
endforeach()
