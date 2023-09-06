# SSH and SCP Assistant

This Bash script serves as an assistant for connecting to remote computers using SSH and transferring files using SCP. It offers a simple menu-driven interface to perform these tasks conveniently. Below is an explanation of the script's structure and functionality:

## Script Overview

The script is organized into several functions and a menu system. It begins by defining the absolute path to an SSH key pair and then provides options for the user to choose from.

## Functions

### `ip-username`

This function prompts the user to enter a Public IP address and a username for the remote host.

### `ssh-assist`

The SSH assistant function guides the user through the process of connecting to a remote host using SSH. It uses the SSH key and the provided IP address and username to establish the connection.

### `scp-source-dest`

This function prompts the user to enter the source and destination file locations for SCP file transfer.

### `scp-local-to-remote`

Allows the user to transfer a file from the local machine to the remote host using SCP.

### `scp-remote-to-local`

Allows the user to retrieve a file from the remote host to the local machine using SCP.

### `scp-assist`

The SCP assistant function provides options for the user to select either local to remote or remote to local file transfer using SCP. It utilizes the functions mentioned above for file transfer.

## Main Menu

After defining the functions, the script presents a main menu to the user with the following options:

- Connect to a computer using SSH: This option invokes the `ssh-assist` function to establish an SSH connection to a remote host.

- Send/retrieve file using scp: This option invokes the `scp-assist` function to perform file transfers using SCP.

## How to Use

To use the script, follow these steps:

1. Run the script in a Bash environment.

2. Choose one of the two main menu options based on your task:

   - Option 1: Connect to a remote computer using SSH.
   
   - Option 2: Send or retrieve files using SCP.

## Important Notes

- Make sure you have the correct SSH key file in the specified path.

- Ensure you have the necessary permissions to access the remote host via SSH and perform SCP file transfers.

## Conclusion

This Bash script provides a convenient and interactive way to connect to remote computers using SSH and transfer files using SCP. It streamlines these common tasks into a user-friendly menu-driven interface, making it easier to manage remote connections and file transfers.
