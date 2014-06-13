FROM ubuntu:14.04
RUN echo deb http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu trusty main > /etc/apt/sources.list.d/google-drive-ocamlfuse
RUN echo deb-src http://ppa.launchpad.net/alessandro-strada/ppa/ubuntu trusty main  >> /etc/apt/sources.list.d/google-drive-ocamlfuse
# invalidate the Cache and update the apt list 
RUN echo currentsMillies
RUN apt-get -y update
# invalidate the Cache and update the apt list 
RUN echo currentsMillies
RUN apt-get -y upgrade
RUN apt-get -y install google-drive-ocamlfuse
