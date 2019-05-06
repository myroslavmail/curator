FROM ventx/curator_cli

ADD curator_cli /usr/bin/
ENTRYPOINT ["/usr/bin/curator_cli"]
