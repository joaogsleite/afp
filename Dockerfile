FROM alpine:latest

RUN apk update && \
    apk add --no-cache dbus avahi netatalk

COPY entrypoint.sh /entrypoint.sh
COPY afp.conf /etc/afp.conf

RUN chmod +x /entrypoint.sh

CMD ["/entrypoint.sh"]