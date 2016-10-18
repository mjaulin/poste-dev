FROM java/jdk8
MAINTAINER Matthieu Jaulin "mjaulin@sii.fr"

ARG UID=1000
ARG GID=1000
ARG DEVELOPER=developer
ENV UID=${UID}
ENV GID=${GID}
ENV DEVELOPER ${DEVELOPER}

RUN mkdir -p /home/${DEVELOPER}/workspace && \
        echo "${DEVELOPER}:x:${UID}:${GID}:${DEVELOPER},,,:/home/${DEVELOPER}:/bin/bash" >> /etc/passwd && \
        echo "${DEVELOPER}:x:${UID}:" >> /etc/group && \
        echo "${DEVELOPER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${DEVELOPER} && \
        chmod 0440 /etc/sudoers.d/${DEVELOPER} && \
        chown ${DEVELOPER}:${DEVELOPER} -R /home/${DEVELOPER} && \
        chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

USER ${DEVELOPER}
WORKDIR /home/${DEVELOPER}/workspace
