FROM demo.sii.fr:5000/eclipse_neon
LABEL authors="Matthieu Jaulin <mjaulin@sii.fr>"

ARG UID=1000
ARG GID=1000
ARG DEVELOPER=developer
ENV UID=${UID}
ENV GID=${GID}
ENV DEVELOPER ${DEVELOPER}

RUN mkdir -p /home/${DEVELOPER}/workspace /home/${DEVELOPER}/.m2
RUN mkdir -p /home/${DEVELOPER}/.eclipse

COPY settings.xml /home/${DEVELOPER}/.m2/

RUN echo "${DEVELOPER}:x:${UID}:${GID}:${DEVELOPER},,,:/home/${DEVELOPER}:/bin/bash" >> /etc/passwd && \
        echo "${DEVELOPER}:x:${UID}:" >> /etc/group && \
        echo "${DEVELOPER} ALL=(ALL) NOPASSWD: ALL" > /etc/sudoers.d/${DEVELOPER} && \
        chmod 0440 /etc/sudoers.d/${DEVELOPER} && \
        chown ${DEVELOPER}:${DEVELOPER} -R /home/${DEVELOPER} && \
	chown ${DEVELOPER}:${DEVELOPER} -R /opt/eclipse && \
        chown root:root /usr/bin/sudo && chmod 4755 /usr/bin/sudo

USER ${DEVELOPER}
ENV HOME /home/${DEVELOPER}
WORKDIR /home/${DEVELOPER}

VOLUME ["/home/${DEVELOPER}/workspace", "/home/${DEVELOPER}/.eclipse", "/home/${DEVELOPER}/repository"]
