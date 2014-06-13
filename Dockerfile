FROM ubuntu:14.04
RUN echo deb http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu trusty main > /etc/apt/sources.list.d/google-drive-ocamlfuse
RUN echo deb-src http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu trusty main  >> /etc/apt/sources.list.d/google-drive-ocamlfuse
# invalidate the Cache and update the apt list 
RUN apt-get -y update
# ECHO Current Dockerfile Version so it breaks the cache!
RUN echo "00000000001"
RUN apt-get -y upgrade
RUN apt-get -y install google-drive-ocamlfuse
