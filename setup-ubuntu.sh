# install:
# update
# upgrade
# default-jre
# default-jdk
# maven
# docker
# curl, wget,

yes Y | sudo apt-get update \
    && yes Y | sudo apt-get upgrade \
    && yes Y | sudo apt-get install default-jdk \
    && yes Y | sudo apt-get install default-jre \
    && yes Y | sudo apt-get install maven \
    && yes Y | sudo apt-get install docker \
    && yes Y | sudo apt-get install curl \
    && yes Y | sudo apt-get install wget

