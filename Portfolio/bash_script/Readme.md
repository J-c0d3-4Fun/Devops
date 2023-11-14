### Welcome to my Bash Script Task!

I was tasked to write a script that collects and reports various system health information, such as CPU, memory, disk usage, active users, and/or running processes for a debian server.

### What is a Bash Script?
- A bash script is a file containing a sequence of commands that are executed by the bash program line by line. It allows you to perform a series of actions, such as navigating to a specific directory, creating a folder, and launching a process using the command line. 

### First lets break down the task:
- We know that the Top command collects and reports CPU, Memory, Disk Usage, Actice users, Running process and more
- For this particular task I want to redirect the output to a File after running 1 iteration
            - "iterations" typically refers to the number of times a particular command or process is executed or repeated. 
- Bash scripts start with a shebang --> #!/bin/bash
- A script is indeicated by the ".sh" file extension
- To run the script youcan use "./" or "bash script-name.sh"
- Remember to change the permissions for the file so you can execute the script
- Permissions 4 = read, 2 = write, 1 - execute ,to change permissions for a file use the "chmod" command

