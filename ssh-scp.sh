#!/bin/bash

#absolute path to the keypair
ssh_key=/home/antonio/awskey.pem

# ip address- username
function ip-username {
    echo "Please enter the Public IP address:"
    read ipaddress
    echo "Please enter the username:"
    read username
    remote_host="$username@$ipaddress"
}

# Function to execute the ssh option
function ssh-assist {
    echo "Welcome to the ssh assistant"
    ip-username
    echo "Connecting to $remote_host"
    sleep 2
    ssh -i $ssh_key $remote_host
        
}

function scp-source-dest {
    echo "Please enter the source file location: "
    read source
    echo "Please enter the destination file location:"
    read destination
}

function scp-local-to-remote {
    echo "Local to remote"
}

function scp-remote-to-local {
    echo "Remote to local"
}
# Function to execute scp option

function scp-assist {
    echo "Welcome to the scp assistant"
    ip-username
    echo "Please select an option"
    echo "1. Local  --> Remote"
    echo "2. Remote --> Local"
    read scpselection
    if [[ $scpselection = 1 ]];
    then
        scp-local-to-remote
    elif [[ $scpselection = 2 ]];
    then
        scp-remote-to-local
    else
        echo "Invalid option"
    fi
    exit 0





    

}

#welcome statement
printf "*** Welcome to the ssh-scp assistant ***\n\n"
printf "Select an option to continue:\n\n"
echo "1. Connect to a computer using ssh"
echo "2. Send/retrieve file using scp"
read input

# provide the options of the program
case $input in
    1) ssh-assist;;
    2) scp-assist;;
    *) echo "Not a valid answer";;
esac


