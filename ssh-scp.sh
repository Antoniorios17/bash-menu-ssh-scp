#!/bin/bash

#variables
ssh_key=/home/antonio/awskey.pem

#welcome statement
printf "*** Welcome to the ssh-scp assistant ***\n\n"
printf "Select an option to continue\n\n"
echo "1 - Connect to a computer using ssh"
echo "2 - Send/retrieve file using scp"


read input

# Function to execute the ssh option
function ssh-assist {
    echo "Welcome to the ssh assistant"
    echo "Please enter the Public IP address:"
    read ipaddress
    echo "Please enter the username:"
    read username
    local remote_host="$username@$ipaddress"
    echo "Connecting to $remote_host"
    sleep 1
    ssh -i $ssh_key $remote_host
        
}
# Function to execute scp option

function scp-assist {
    echo Hello I\'m the scp function
}


# provide the options of the program
case $input in
    1) ssh-assist;;
    2) scp-assist;;
    *) echo "Not a valid answer";;
esac


