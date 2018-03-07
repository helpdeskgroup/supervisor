FROM alpine:3.4
MAINTAINER helpdeskgroup helpdeskgroup@helpme.net

RUN apk update && \
    apk upgrade && \
    apk add --no-cache supervisor=3.3.3-r1

ENV TERM xterm
ENV SUPERVISOR_CONF_FILE /etc/supervisor/supervisord.conf

ENTRYPOINT /usr/bin/supervisord -c $SUPERVISOR_CONF_FILE
