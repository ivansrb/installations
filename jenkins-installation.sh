wget -O /etc/yum.repos.d/jenkins.repo \
	https://pkg.jenkins.io/redhat-stable/jenkins.repo
rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io.key
yum upgrade -y
yum install java-11-openjdk -y 
yum install jenkins -y
systemctl daemon-reload
systemctl enable --now jenkins

echo Installation complete!
echo "Go to: http://`hostname -I | awk '{print $1}'`:8080 and follow the instructions." 
