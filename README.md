# Pepper Robot Diem
## Workspace setup
1. Clone this repository: `git clone https://github.com/peppo97/pepper_robot_diem.git`
2. `cd pepper_robot_diem`
3. Install the requirements and create the workspace: `bash install.bash`
4. Go into workspace directory: `cd $HOME/catkin_ws`
5. Build the workspace: `catkin build`
6. `source devel/setup.bash`
7. Run nodes and services: `roslaunch pepper_nodes pepper_bringup.launch nao_ip:=<ROBOT IP>`<br>
**Replace \<ROBOT IP\> with the true robot ip. Example: 10.0.1.207**
