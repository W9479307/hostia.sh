#!/bin/bash
/* Some comment to tell you what this is about... */
clear
echo -e "\e[91m "
printf %"$COLUMNS"s | tr " " "-"      
hostnamectl
echo "      Username    : "$USER
echo "      Directory   : "$PWD
echo "      Language    : "$LANG
echo
printf %"$COLUMNS"s | tr " " "-"
echo -e "\e[96m *  "
echo -e "\e[36m *  "
echo -e "\e[34m *                      *   *"
echo -e "\e[94m ****   *****   *****   *      ***"
echo -e "\e[34m *  *  *     *  *      ***  * *   *"
echo -e "\e[36m *  *  *     *   ****   *   * *   *"
echo -e "\e[96m *  *   *    *      *   *   * *   * *"
echo -e "\e[36m *  *    ****   *****   *   * ****** "
echo -e "\e[26m ____________________________________"
echo -e "                      \e[96m By Ken Dodd's Dad's Dog's Dead \e[34m   "
echo
echo
echo -e  "\e[91mHey..."
hostname -I
date
echo
read -p "Enter first 3 IP sections   e.g. 192.168.0>    " ip 
read -p "Enter the top end of the ip e.g.          254> " number
read -p "Enter p for parallel execution               > " VAR
VAR1="p"
if [ "$VAR" = "$VAR1" ]
then
  echo -e "\e[32mRunning hostia PARALLEL EXECUTION ..." 
  for i in $(seq 1 $number)
  do
          host $ip.$i &
  done
else
  echo -e "\e[32mRunning hostia SERIAL EXECUTION ..."
  read -p "Enter file name for output                 > " fname
  for i in $(seq 1 $number);do
         host $ip.$i >> $fname; done 
fi
echo
sleep 5
echo -e "\e[91mComplete..."
echo -e "\033[33;5;7mI said I was done...\033[0m"
echo
exit

