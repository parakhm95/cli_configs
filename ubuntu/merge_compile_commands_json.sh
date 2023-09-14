rm $ROS_WORKSPACE1/build/compile_commands.json || :
printf '[' > $ROS_WORKSPACE1/build/compile_commands_combined.json
find $ROS_WORKSPACE1/build -type f -name 'compile_commands.json' -exec sh -c "cat {} | tail -n+2 | head -n-1 && printf ','" >> $ROS_WORKSPACE1/build/compile_commands_combined.json \;
sed -i '$s/.$//' $ROS_WORKSPACE1/build/compile_commands_combined.json
printf '\n]\n' >> $ROS_WORKSPACE1/build/compile_commands_combined.json
mv $ROS_WORKSPACE1/build/compile_commands_combined.json $ROS_WORKSPACE1/build/compile_commands.json

rm $ROS_WORKSPACE2/build/compile_commands.json || :
printf '[' > $ROS_WORKSPACE2/build/compile_commands_combined.json
find $ROS_WORKSPACE2/build -type f -name 'compile_commands.json' -exec sh -c "cat {} | tail -n+2 | head -n-1 && printf ','" >> $ROS_WORKSPACE2/build/compile_commands_combined.json \;
sed -i '$s/.$//' $ROS_WORKSPACE2/build/compile_commands_combined.json
printf '\n]\n' >> $ROS_WORKSPACE2/build/compile_commands_combined.json
mv $ROS_WORKSPACE2/build/compile_commands_combined.json $ROS_WORKSPACE2/build/compile_commands.json
