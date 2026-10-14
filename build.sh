#!/bin/bash

# docker build . -f Dockerfile.add_sdk.24.04 -t azure_kinect
_REPO_=repo.irsl.eiiris.tut.ac.jp/
#>_UBUNTU_=24.04
#>_ROS_=jazzy
#>
#>docker build . -f Dockerfile.add_sdk.24.04 --build-arg BASE_IMAGE=${_REPO_}irsl_system:${_UBUNTU_}_${_ROS_} -t temp/azure_kinect:${_UBUNTU_}_${_ROS_}
#>
#>docker build . -f Dockerfile.add_ros2 --build-arg BASE_IMAGE=temp/azure_kinect:${_UBUNTU_}_${_ROS_} -t azure_kinect:${_UBUNTU_}_${_ROS_}

_UBUNTU_=24.04
_ROS_=one

docker build . -f Dockerfile.add_sdk.24.04 --build-arg BASE_IMAGE=${_REPO_}irsl_system:${_UBUNTU_}_${_ROS_} -t temp/azure_kinect:${_UBUNTU_}_${_ROS_}

docker build . -f Dockerfile.add_ros1 --build-arg BASE_IMAGE=temp/azure_kinect:${_UBUNTU_}_${_ROS_} -t azure_kinect:${_UBUNTU_}_${_ROS_}
