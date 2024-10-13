# Fetching OS Info
echo "============="
echo "OS Info for" && hostname
echo "============="
cat /etc/**release

echo "*******************************************************************"

# Fectching Installed Package Version
echo "=================================="
echo "Fetching Installed Package Version"
echo "=================================="
rpm -qa | egrep 'httpd|php'

echo "*******************************************************************"

# Fetching Installed Tomcat Version
echo "=================================="
echo "Fetching Installed Tomcat Version"
echo "=================================="
sh /usr/share/tomcat/bin/version.sh


echo "*******************************************************************"

# Fecthing Cronjobs for Topcat user
echo "=================================="
echo "Fetching CronJobs for Tomcat User"
echo "=================================="
crontab -u tomcat -l 2>&1

echo "*******************************************************************"
