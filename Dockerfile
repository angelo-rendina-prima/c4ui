FROM alpine/git

COPY handler.sh /root/handler.sh

ENTRYPOINT [ "/root/handler.sh" ]
