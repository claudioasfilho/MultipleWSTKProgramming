#!/bin/bash
# Basic while loop

declare -a test_array

#Array set for xG22 Boards
test_array=(440061682 440094329 440061677 440043929 440152841 440043924 440043545 440094496 440056123 440056134 440066187 440043751 440066183 440066189 440038062 440033720 440043547 440043753 440075990 440076011 440076008 440055049 440130525)

for i in ${test_array[@]}
do

echo -e "Starting to program Board "
echo $i
  commander flash xG22AppPlusBootV2.hex -s $i
echo -n "programming concluded on Board "
echo $i
done
