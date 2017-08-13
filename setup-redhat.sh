yes Y | sudo yum update \
    yes Y | sudo yum install wget \
    yes Y | sudo yum install java-1.8.0-openjdk \
    yes Y | sudo yum install java-1.8.0-openjdk-devel \
    yes Y | sudo yum install tmux

# get maven
wget http://mirror.olnevhost.net/pub/apache/maven/maven-3/3.0.5/binaries/apache-maven-3.0.5-bin.tar.gz
tar xvf apache-maven-3.0.5-bin.tar.gz
sudo mv apache-maven-3.0.5  /usr/local/apache-maven
echo "export PATH=$PATH:/usr/local/apache-maven/bin" >> ~/.bashrc
source ~/.bashrc
