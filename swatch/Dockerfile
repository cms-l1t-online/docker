FROM centos:centos6
MAINTAINER Luke Kreczko <lkreczko@gmail.com>
RUN yum update -y && yum install wget -y

ADD repos/uhal-nightly.repo /etc/yum.repos.d/uhal-nightly.repo
ADD repos/ts-nightly.repo /etc/yum.repos.d/ts-nightly.repo
ADD repos/xdaq.repo /etc/yum.repos.d/xdaq.repo
ADD repos/wandisco.repo /etc/yum.repos.d/wandisco.repo

# install dependencies
RUN yum install nano svn git unzip python-devel -y
RUN yum groupinstall uhal triggersupervisor -y
RUN yum install daq-toolbox-devel daq-log4cplus* daq-xdata* daq-xcept* daq-asyncresolv* -y
RUN yum install cactuscore-* cactusprojects-sub* -y
RUN yum install uuid uuid-devel   -y
RUN ln -s /lib64/libuuid.so.1 /lib64/libuuid.so

# setup folder and environment script
RUN mkdir -p /opt/swatch && cd /opt/swatch
ADD environment.sh /opt/swatch_env.sh
RUN echo "source /opt/swatch_env.sh" > /etc/profile.d/swatch.sh