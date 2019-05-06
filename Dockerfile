FROM ventx/curator_cli

ENTRYPOINT ["/usr/bin/curator_cli", "--config ./config.yml ./action.yml"]
