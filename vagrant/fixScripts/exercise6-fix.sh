#!/bin/bash
#add fix to exercise6-fix here

#first, we set variable values and attributes via declare command, with -A flag, each name is an associative array variable
declare -A servers=( ['1']='2' ['2']='1')
server_name=`hostname`
server_num=${server_name: -1}
# lineinput variable will hold all the arguments that have been passed to the script
lineinput="'$*'"
# read the arguments from the variable as array
read -a arr <<< $lineinput
# the destination directory is the last item in the array of servers
dest_dir=arr[-1]
# make scp (Secure Copy - securley transferring files via ssh between two machines on a network) over all the servers that have been declared up and transfer all the parameters
for i in "${arr[@]::${#arr[@]}-1}"
do
	scp $i "server${servers[$server_num]}/$dest_dir"
done
mkdir practices
# insert the script into environment variable in order to we will be able to call him from anywhere, not only from his folder, global
echo 'export PATH=$PATH/home/vagrant/practices/' >> ~/.bashrc 
source ~/.bashrc
