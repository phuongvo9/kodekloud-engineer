#Jump server
thor
mjolnir123
# Nautilus App 1
ssh tony@stapp01
Ir0nM@n
# Nautilus App 2
ssh steve@stapp02
Am3ric@
# Nautilus App 3
ssh banner@stapp03
BigGr33n

# Nautilus DB Server
ssh peter@stdb01
Sp!dy

#HTTP LBR
ssh loki@stlb01
Mischi3f

# Nautilus Storage Server
ststor01 - 172.16.238.15 - ststor01.stratos.xfusioncorp.com
natasha@ststor01
natasha
Bl@kW

# Nautilus Backup Server
stbkp01
172.16.238.16 - stbkp01.stratos.xfusioncorp.com
ssh clint@stbkp01
H@wk3y3

# Nautilus Mail Server
stmail01
172.16.238.17 - stmail01.stratos.xfusioncorp.com
ssh groot@stmail01
groot
Gr00T123


"""
Project Nautilus is the Naval subdivision of the xFusionCorp Industries. Nautilus Application helps the Naval forces to make smart procurement decisions of their manned or unmanned maritime systems while ensuring that the operational requirements are met. It also aims to provide the best-in-class operational support, improving the safety and life extension of existing machines and reducing the cost of ownership.
Current Repertoire¶
	1. Sonar Technology and Systems
	2. LUSV - Large Unmanned Surface Vehicles
	3. Autonomous Unmanned Undersea Pods
	4. Nuclear Submarines
	5. Laser Guidance Systems
Application Architecture¶
Nautilus deployment architecture can be viewed here
The Nautilus is a three-tier application and is deployed in the Stratos Datacenter in the North America Region.
	• Data Tier: The Data tier is the layer that stores data with the retrieval storage and execution methods made by the application layer. We are making use of MariaDB which is one of the most popular open source relational databases.
	• Application Tier: Makes use of a LAMP which is a stack of open-source software that can be used to create web applications. LAMP is an acronym that usually consists of the Linux OS, the Apache HTTP Server, a MySQL relational DBMS (like MariaDB), and PHP.
	• Client Tier: The application client which in this case is a web browser software that processes and displays HTML resources, issues HTTP requests for resources, and processes HTTP responses.
	• Load Balancer: Nginx is used for HTTP Load Balancing to distribute requests through multiple application servers.
Shared Services¶
	• Storage Filer: A NAS (Network Attached Storage) filer is used to provide reliable and stable external storage for the application tier servers.
	• SFTP Server: SFTP, which stands for SSH File Transfer Protocol is used to transfer data amongst two remote systems.
	• Backup Server: A staging backup system used for short term archival.
Jump Server: The intermediary host or an SSH gateway to a remote network hosting the Nautilus application
"""