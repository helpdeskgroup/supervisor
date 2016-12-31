FROM centos:centos7
MAINTAINER Lee Witherington lee@witherington.net

RUN yum -y update && \
    yum install -y epel-release && \
    yum install -y supervisor && \
    yum clean all

ENV TERM xterm
ENV SUPER xterm
ENV SUPERVISOR_CONF_FILE /etc/supervisor/supervisord.conf

ENTRYPOINT /usr/bin/supervisord -c $SUPERVISOR_CONF_FILE
