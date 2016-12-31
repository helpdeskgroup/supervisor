FROM alpine:3.4
MAINTAINER Lee Witherington lee@witherington.net

RUN apk update && \
    apk upgrade && \
    apk add --no-cache supervisor=3.2.0-r0

ENV TERM xterm
ENV SUPERVISOR_CONF_FILE /etc/supervisor/supervisord.conf

ENTRYPOINT /usr/bin/supervisord -c $SUPERVISOR_CONF_FILE
