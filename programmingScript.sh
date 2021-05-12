#!/bin/bash
# Basic while loop

declare -a test_array

#Array set for xG22 Boards
test_array=(440172391 440154391 440179444)

for i in ${test_array[@]}
do

echo -e "Starting to program Board "
echo $i
  commander flash xG22AppPlusBootV0.hex -s $i
echo -n "programming concluded on Board "
echo $i
done
