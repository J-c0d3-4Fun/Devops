### Welcome to my Ansible-Playbook Task!

I was taksed with creating an idempotent Ansible playbook that automates the installation and configuration of Docker on a Debian bookworm host, ensuring it correctly handles repeated executions without unnecessary changes to the system state. 

### What is Ansible?
Ansible provides open-source automation that reduces complexity and runs everywhere. Using Ansible lets you automate virtually any task. Here are some common use cases for Ansible:

- Eliminate repetition and simplify workflows
- Manage and maintain system configuration
- Continuously deploy complex software
- Perform zero-downtime rolling updates
reference: https://docs.ansible.com/ansible/latest/getting_started/introduction.html

### What is a Ansible Playbook?
- Ansible Playbooks offer a repeatable, reusable, simple configuration management and multi-machine deployment system, one that is well suited to deploying complex applications
reference: https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_intro.html

### Let's break down the task:
- I will need to create an Ansible Playbook that can run on a Debian Bookworm (version 12, which is the latest at the time of me writing this)
- I used 2 ec2 instances to test the playbooks funcitonality, both were Debian v12 (Bookworm) Instances
- One instance was a Control Node and the other istance was a Managed Node
- I created the Inventory.yaml and added the Managed Node IP to the file
- Control Node is where Ansible was installed as it controls the other nodes in the environment
- My first attempt of checking in to the Managed Node I ran into a error with the Public Key
- I had to generate a public key on the Control Node using ssh-keygen and used the default values to store it in the .ssh/ directory
- the .ssh directory is located in home directory of the user
- After generating the public key I then needed to copy the genereated key to the Managed Node
- Then on the Managed Node I had to review ssh daemon configurationfile, whcih is located int eh etc/ssh/ directory (must be root user)
- I then enabled public Key authentication and password authentication (the ssh daemon configuration file is sshd_config)
- Next i tested ssh connectivity by using ssh user@ip-of-instance, I was able to successfully connect
- Then I confirmed that the Control Node can check in with the Managed node by using "ansible name-of-instance-group -m ping -i inventory.yaml" (name-of-instance-group = virtualmachines for me)
- After successfully checking in I then wrote my docker.yaml file
- And was able to succesfully install docker using "ansible-playbook -i inventory.yaml docker.yaml"



##### This one was a challenge as i had to continually troubleshoot the ssh issue until I found the Managed node had ssh authentication commented out

