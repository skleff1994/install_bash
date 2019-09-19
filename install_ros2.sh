##### installation script for ROS 2


## NOTE : Before running this bash file please go to the following link and download the latest release for ros2.
## link : https://github.com/ros2/ros2/releases
## In this bash file the release downloaded and installed is - ros2-dashing-20190910-linux-bionic-amd64.tar.bz2
## Please change the name of the tar file downloaded below so that particular file is unpacked. 


##########################################################################################


# enable kernel sources
# this is necessary for the ros package librealsense in 18.04
sudo apt-get install -y sudo              # Provide the sudo rights, required for the enable_kernel_sources.sh script file below
sudo wget -O enable_kernel_sources.sh http://bit.ly/en_krnl_src
sudo bash ./enable_kernel_sources.sh
sudo apt-get update && apt-get install -y software-properties-common

####### ROS 2 setup ##########################################################################

sudo apt update && sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -

sudo sh -c 'echo "deb [arch=amd64,arm64] http://packages.ros.org/ros2/ubuntu `lsb_release -cs` main" > /etc/apt/sources.list.d/ros2-latest.list'

################################################################################################

sudo apt install ros-dashing-desktop

##### installing ros2 ########################################################################

sudo apt install -y python-rosdep
sudo rosdep fix-permissions
rosdep init
rosdep update

############################################################################################

# Install the ros packages
sudo apt-get install -y \
    python-catkin-tools \
    python-rosdep \
    python-rosinstall \
    python-rospkg \
    python-wstool \
    ros-melodic-audio-common \
    ros-melodic-catkin \
    ros-melodic-cmake-modules \
    ros-melodic-control-toolbox \
    #ros-melodic-ecto \
    ros-melodic-gazebo-ros-control \
    ros-melodic-gazebo-ros-pkgs \
    ros-melodic-joint-state-publisher \
    ros-melodic-joy \
    ros-melodic-kdl-parser \
    ros-melodic-moveit \
    ros-melodic-moveit-core \
    ros-melodic-octomap \
    ros-melodic-octomap-msgs \
    ros-melodic-octomap-rviz-plugins \
    ros-melodic-ompl \
    ros-melodic-openni-* \
    ros-melodic-pcl-conversions \
    #ros-melodic-qt-build \
    ros-melodic-realtime-tools \
    ros-melodic-robot-state-publisher \
    ros-melodic-ros-control \
    ros-melodic-ros-controllers \
    ros-melodic-tf-conversions \
    ros-melodic-tf-conversions \
    ros-melodic-robot-self-filter \
    ros-melodic-xacro \
    ros-melodic-tf2-bullet \
    ros-melodic-realtime-tools

###### installing additional packeages using ros1 ############################################
sudo apt update
sudo apt install ros-dashing-ros1-bridge