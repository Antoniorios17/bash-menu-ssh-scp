#!/bin/bash

#welcome statement
printf "*** Welcome to the ssh-scp assistant ***\n\n"
printf "Select an option to continue\n\n"
echo "1 - Connect to a computer using ssh"
echo "2 - Send/retrieve file using scp"

read input

# Function to execute the ssh option
function ssh-assist {
    echo "Please enter the Public Ip address"
    read ipaddress
    echo Hello I\'m the ssh function

        
}
# Function to execute scp option

function scp-assit {
    echo Hello I\'m the scp function
}


case $input in
    1) ssh-assist;;
    2) scp-assist;;
    *) echo "Not a valid answer";;
esac
# provide the options of the program

