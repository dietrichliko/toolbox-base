ARG FEDORA_VERSION
ARG BUILD_DATE
ARG VCS_REF
FROM registry.fedoraproject.org/fedora-toolbox:${FEDORA_VERSION}

LABEL org.opencontainers.image.title="My base Fedora Toolbox"
LABEL org.opencontainers.image.description="A Fedora-based development container for toolbox"
LABEL org.opencontainers.image.revision=$VCS_REF
LABEL org.opencontainers.image.created=$BUILD_DATE
LABEL org.opencontainers.image.authors="Dietrich Liko <Dietrich.Liko@oeaw.ac.at>"
LABEL org.opencontainers.image.licenses="MIT"                   
LABEL org.opencontainers.image.source="https://github.com/dietrichliko/toolbox-base"
LABEL org.opencontainers.image.documentation="https://github.com/dietrichliko/toolbox-base/README.md"


RUN dnf -y update && \
    dnf -y copr enable atim/starship && \
    dnf -y copr enable lihaohong/chezmoi && \
    dnf -y install \
        zsh \
        jq \
        chezmoi \
        starship \
        gh \
        direnv \
        krb5-workstation && \
    dnf clean all 

