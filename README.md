## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

(Images/Oluwapeluwa-CloudSecurity-WithELK.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the elk.yml file may be used to install only certain pieces of it, such as Filebeat.


This document contains the following details:
- Description of the Topology
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly available, in addition to restricting access/exposure to the internet.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the files and system metrics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function   | IP Address  | Operating System |
|----------|------------|-------------|------------------|
| Jump Box | Gateway    | 10.0.0.4    | Linux            |
| Elk VM   | Monitoring | 10.1.0.4    | Linux            |
| Web 1    | Hosts DVWA | 10.0.0.5    | Linux            |
| Web 2    | Hosts DVWA | 10.0.0.6    | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the Jump Box (10.0.0.4) machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses: 92.246.200.215

Machines within the network can only be accessed by 92.246.200.215.

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses  |
|----------|---------------------|-----------------------|
| Jump Box | No                  | 92.246.200.251        |
| Elk VM   | Yes                 | 92.246.200.251        |
| Web 1    | No                  | 10.0.0.4              |
| Web 2    | No                  | 10.0.0.4              |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because it reduces the risk of misconfiguration caused by human error. This not only streamlines the process of standing up resources but it also offers a level of consistency with deployments.

The playbook implements the following tasks:
- Install docker.io: installs the docker image
- Install python3-pip: installs python3 library needed by ELK
- Install Docker module: installs the docker module
- Increase virtual memory: increases the virtual memory to meet ELK requirements
- Download and launch docker elk container: download and launch the docker elk container 

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

(Images/docker_ps_output.png) Note: I unfortunately, do not have a screenshot from running docker ps on my VM. I thought I had the screenshot saved but I do not and all the data on Azure has been deleted.

### Target Machines & Beats
This ELK server is configured to monitor the following machines: 10.0.0.5 and 10.0.0.6

We have installed the following Beats on these machines:
- FileBeat
- MetricBeat

These Beats allow us to collect the following information from each machine:
- FileBeat allows us to log instances when a file is added, deleted or modified. For instance, if a file was edited, the user and exact time is logged. MetricBeat allows us to monitor the performance metrics of our VMs. Parameters such as CPU usage are logged.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the File/MetricBeat configuration file to the Webserver that has File/MetricBeat installed.
- Update the host file to include the Elk server IP address as well as the Webservers IP addresses
- Run the playbook by typing the command "ansible-playbook (/location/playbook.yml)", and navigate to localhost:5601/app/kibana to check that the installation worked as expected.
