##### installation script for ROS 2

## link : https://github.com/ros2/ros2/releases

##########################################################################################\

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

##### installing ros2 ########################################################################

sudo apt update && sudo apt install -y \
  build-essential \
  cmake \
  git \
  python3-colcon-common-extensions \
  python3-pip \
  python-rosdep \
  python3-vcstool \
  wget
# install some pip packages needed for testing
python3 -m pip install -U \
  argcomplete \
  flake8 \
  flake8-blind-except \
  flake8-builtins \
  flake8-class-newline \
  flake8-comprehensions \
  flake8-deprecated \
  flake8-docstrings \
  flake8-import-order \
  flake8-quotes \
  pytest-repeat \
  pytest-rerunfailures \
  pytest \
  pytest-cov \
  pytest-runner \
  setuptools
# install Fast-RTPS dependencies
sudo apt install --no-install-recommends -y \
  libasio-dev \
  libtinyxml2-dev


mkdir -p ~/ros2_ws/src
cd ~/ros2_ws
wget https://raw.githubusercontent.com/ros2/ros2/dashing/ros2.repos
vcs import src < ros2.repos

sudo rosdep init
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro dashing -y --skip-keys "console_bridge fastcdr fastrtps libopensplice67 libopensplice69 rti-connext-dds-5.3.1 urdfdom_headers"


cd ~/ros2_ws/
colcon build --symlink-install
