## This bash file is to install different simulators

## installtion for pybullet
sudo -H pip install pybullet

## installtion for dartsim

# Add the Dartsim ppa
add-apt-repository -y ppa:dartsim/ppa

# update apt package list
sudo apt-get update

# install Dartsim
# Ubuntu14.04: libdart5-dev
# Ubuntu16.04: libdart6-dev
sudo apt-get install libdart6-dev






