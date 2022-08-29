
FROM ubuntu:bionic
ARG DEBIAN_FRONTEND=noninteractive
RUN apt update
RUN apt install -y curl gnupg2
RUN echo "deb http://packages.ros.org/ros/ubuntu bionic main" > /etc/apt/sources.list.d/ros-latest.list
RUN curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | apt-key add -
RUN apt update
RUN apt install -y ros-melodic-ros-base
RUN echo "source /opt/ros/melodic/setup.bash" >> $HOME/.bashrc

WORKDIR /root
RUN apt update
RUN apt install -y net-tools wget python-catkin-tools python-rosdep iputils-ping git nano mlocate
RUN wget https://community-static.aldebaran.com/resources/2.5.10/Python%20SDK/pynaoqi-python2.7-2.5.7.1-linux64.tar.gz
RUN tar -xzvf pynaoqi-python2.7-2.5.7.1-linux64.tar.gz
RUN mv pynaoqi-python2.7-2.5.7.1-linux64 /opt/ros/melodic/lib/pynaoqi
CMD ["/bin/bash"]
WORKDIR /root/naoqi_driver_ws/src
RUN git clone https://github.com/ros-naoqi/naoqi_bridge.git
RUN git clone https://github.com/ros-naoqi/pepper_robot.git
WORKDIR /root/naoqi_driver_ws
RUN rosdep init
RUN /bin/bash -c "source /opt/ros/melodic/setup.bash && rosdep update"
RUN rosdep install --from-paths src --ignore-src --rosdistro melodic -r -y
RUN echo "export PYTHONPATH=\$PYTHONPATH:/opt/ros/melodic/lib/pynaoqi/lib/python2.7/site-packages" >> $HOME/.bashrc
WORKDIR /root/naoqi_driver_ws/run
RUN echo "#!/bin/bash" > bringup && echo "roslaunch pepper_bringup pepper_full_py.launch nao_ip:=10.0.1.207" >> bringup 
RUN chmod +x bringup
WORKDIR /root
RUN rm -rf pynaoqi*
