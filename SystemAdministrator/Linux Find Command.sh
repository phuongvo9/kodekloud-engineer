#!/bin/bash/
"""
During a routine security audit, the team identified an issue on the Nautilus App Server. Some malicious content was identified within the website code. After digging into the issue they found that there might be more infected files. Before doing a cleanup they would like to find all similar files and copy them to a safe location for further investigation. Accomplish the task as per the following requirements:



a. On App Server 3 at location /var/www/html/beta find out all files (not directories) having .php extension.

b. Copy all those files along with their parent directory structure to location /beta on same server.

c. Please make sure not to copy the entire /var/www/html/beta directory content.
"""


find /var/www/html/beta -type f -name "*.php" -exec cp --parent {} /beta \;