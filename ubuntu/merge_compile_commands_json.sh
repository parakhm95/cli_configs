rm $ROS_WORKSPACE/build/*.json || :
printf '[' > $ROS_WORKSPACE/build/compile_commands_combined.json
find $ROS_WORKSPACE/build -type f -name 'compile_commands.json' -exec sh -c "cat {} | tail -n+2 | head -n-1 && printf ','" >> $ROS_WORKSPACE/build/compile_commands_combined.json \;
sed -i '$s/.$//' $ROS_WORKSPACE/build/compile_commands_combined.json
printf '\n]\n' >> $ROS_WORKSPACE/build/compile_commands_combined.json
mv $ROS_WORKSPACE/build/compile_commands_combined.json $ROS_WORKSPACE/build/compile_commands.json
