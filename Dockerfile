FROM weblinkgmbh/hpvsop-base-ssh:1.2.3-release-d0651e4

RUN apt-get update -y && \
        DEBIAN_FRONTEND=noninteractive apt-get install -y nginx

COPY iptables.conf /etc/iptables/
CMD ["/sbin/init"]
