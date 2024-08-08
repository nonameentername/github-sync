FROM ubuntu:22.04

LABEL \
  org.opencontainers.image.title="GitHub Repo Sync" \
  org.opencontainers.image.description="⤵️ A GitHub Action for syncing current repository with remote" \
  org.opencontainers.image.url="https://github.com/repo-sync/github-sync" \
  org.opencontainers.image.documentation="https://github.com/marketplace/actions/github-sync" \
  org.opencontainers.image.source="https://github.com/repo-sync/github-sync" \
  org.opencontainers.image.licenses="MIT" \
  org.opencontainers.image.authors="Wei He <github@weispot.com>" \
  maintainer="Wei He <github@weispot.com>"

RUN apt update && apt install -y git openssh-client && \
  echo "StrictHostKeyChecking no" >> /etc/ssh/ssh_config

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
