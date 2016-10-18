FROM java/jdk8

ADD run /usr/local/bin/giteye

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module unzip wget

RUN wget https://downloads-guests.open.collab.net/files/documents/61/12536/GitEye-1.12.0-linux.x86_64.zip -O /tmp/GitEye.zip -q && \
	unzip /tmp/GitEye.zip -d /opt/GitEye && rm -f /tmp/*

RUN chmod +x /usr/local/bin/giteye
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8

ENTRYPOINT /usr/local/bin/giteye

