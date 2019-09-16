## Installation of pinocchio and dynamic graph


# This assumes you are using Ubuntu 18.04.
# If not, please adjust the "xenial" to the output of `lsb_release -c`
sudo sh -c "echo 'deb [arch=amd64] http://robotpkg.openrobots.org/wip/packages/debian/pub bionic robotpkg\ndeb [arch=amd64] http://robotpkg.openrobots.org/packages/debian/pub bionic robotpkg' > /etc/apt/sources.list.d/robotpkg.list"
curl http://robotpkg.openrobots.org/packages/debian/robotpkg.key | sudo apt-key add -
sudo apt-get update


sudo apt-get install robotpkg-dynamic-graph-v3      # The dynamic graph
#sudo apt-get install robotpkg-py27-dynamic-graph-v3 # The dynamic graph python bindings
sudo apt-get install robotpkg-tsid                  # Andrea Delprete Task Space Inverse Dynamics
sudo apt-get install robotpkg-gepetto-viewer        # LAAS 3D robot viewer

sudo apt-get install robotpkg-pinocchio             # Eigen based rigid body dynamics library
sudo apt-get install robotpkg-hpp-fcl               # collision detection for pinocchio
sudo apt-get install robotpkg-libccd                # not sure
sudo apt-get install robotpkg-octomap               # not sure
sudo apt-get install robotpkg-parametric-curves     # Spline and polynomes library
sudo apt-get install robotpkg-simple-humanoid-description # Simple humanoid robot_properties package

sudo apt-get install robotpkg-sot-core-v3              # Dynamic Graph Utilities
sudo apt-get install robotpkg-sot-tools-v3             # Dynamic Graph Utilities
sudo apt-get install robotpkg-sot-dynamic-pinocchio-v3 # DG wrapper around pinocchio

sudo apt-get install robotpkg-py36-eigenpy            # Python bindings
sudo apt-get install robotpkg-py36-pinocchio          # Python bindings
sudo apt-get install robotpkg-py36-parametric-curves  # Python bindings
#sudo apt-get install robotpkg-py27-sot-core-v3        # Python bindings
#sudo apt-get install robotpkg-py27-sot-dynamic-pinocchio-v3 # Python bindings
sudo apt-get install robotpkg-py36-qt4-gepetto-viewer-corba # LAAS 3D robot viewer network client/server


## Bashrc export
export PATH=/opt/openrobots/bin:$PATH
export PKG_CONFIG_PATH=/opt/openrobots/lib/pkgconfig:$PKG_CONFIG_PATH
export LD_LIBRARY_PATH=/opt/openrobots/lib:/opt/openrobots/lib/plugin:$LD_LIBRARY_PATH
export PYTHONPATH=/opt/openrobots/lib/python3.6/site-packages:$PYTHONPATH

sudo chown -R root:root /opt/openrobots                                
