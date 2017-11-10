FROM centos:7

RUN yum -y install epel-release && \
    yum -y install python-pip
RUN pip install --upgrade elasticsearch-curator

COPY /curator /etc/curator
COPY /docker-entrypoint.sh /docker-entrypoint.sh

CMD ["/docker-entrypoint.sh"]
