FROM centos:7

RUN cd /etc/yum.repos.d && \
    curl -OL https://copr.fedorainfracloud.org/coprs/jasonish/suricata-stable/repo/epel-7/jasonish-suricata-daily-epel-7.repo && \
    yum -y install epel-release && \
    yum -y install \
    	suricata \
	python-yaml \
	iproute

# Seed the rules.
RUN suricata-update --no-test --no-reload

COPY /suricata-demo.yaml /etc/suricata/suricata-demo.yaml.in
COPY /docker-entrypoint.sh /docker-entrypoint.sh

ENTRYPOINT ["/docker-entrypoint.sh"]
