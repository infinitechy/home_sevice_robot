#!/bin/sh
cd ../../
xterm -e "source ./devel/setup.bash; roslaunch my_robot world.launch" &
sleep 5
xterm -e "source ./devel/setup.bash; roslaunch my_robot localization.launch" &
sleep 5
xterm -e "source ./devel/setup.bash; rosrun pick_objects pick_objects_node 0" &
sleep 5