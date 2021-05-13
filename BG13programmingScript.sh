#!/bin/bash
# Basic while loop

declare -a test_array

#Array set for xG22 Boards
test_array=(440101439 440152833 440075571 440075577 440152830 440152835 440075579 440060634 440101436 440043245 440101434 440154391 440092095)
for i in ${test_array[@]}
do

echo -e "Starting to program Board "
echo $i
  #commander device recover -s $i
  commander flash BG13AppPlusBootV2.hex -s $i
echo -n "programming concluded on Board"
echo $i
done
