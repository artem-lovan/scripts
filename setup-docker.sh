# run "sudo su" before call this bash
apt-get -y update
apt-get install -y git python-yaml python-jinja2 python-pycurl
git clone https://github.com/ansible/ansible.git
cd ansible
source ./hacking/env-setup
ansible-galaxy install angstwad.docker_ubuntu
mkdir /etc/ansible
touch /etc/ansible/hosts
echo "[local]" > /etc/ansible/hosts
echo " localhost" >> /etc/ansible/hosts
touch /tmp/docker.yml
echo "- hosts: local" > /tmp/docker.yml
echo "  connection: local" >> /tmp/docker.yml
echo "  roles:" >> /tmp/docker.yml
echo "    - angstwad.docker_ubuntu" >> /tmp/docker.yml
ansible-playbook /tmp/docker.yml
usermod -a -G docker ubuntu
