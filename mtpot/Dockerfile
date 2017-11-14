FROM centos:7

RUN yum -y install epel-release && \
    yum -y install \
    	   python-pip \
	   git
RUN pip install telnetsrv
RUN pip install gevent

RUN cd / && \
    git clone https://github.com/Cymmetria/MTPot.git mtpot

EXPOSE 23

ENTRYPOINT ["/mtpot/MTPot.py", "/mtpot/mirai_conf.json"]
