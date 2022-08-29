# Pepper Robot Diem
## Docker installing
1. Download the installation packages: `wget https://github.com/peppo97/pepper_robot_diem/releases/download/docker_installation/docker.zip`
2. Extract them: `unzip docker.zip`
3. Go into directory: `cd docker/scripts`
4. Install the Docker engine: `bash install_docker.bash`

### Image building
5. Build the image: `docker build -t pepper_ros ..`

### Container starting
6. Start the container: `bash start_container.bash` <br>
**The container only needs to be started if it doesn't exist. If it already exists it just needs to be run**

### Container running
7. Run the container: `bash run_container.bash`

### Do you need more shells?
8. Run: `docker exec pepper_ros_cnt /bin/bash`
