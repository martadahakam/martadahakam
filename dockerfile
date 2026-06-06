FROM alpine:latest
RUN apk add --no-cache wget unzip
RUN wget -O /tmp/xray.zip https://github.com/XTLS/Xray-core/releases/latest/download/Xray-linux-64.zip && \
    unzip /tmp/xray.zip -d /usr/local/bin/ && \
    rm -rf /tmp/xray.zip /usr/local/bin/README.md /usr/local/bin/LICENSE
COPY config.json /etc/xray/config.json
CMD ["/usr/local/bin/xray", "-config", "/etc/xray/config.json"]
