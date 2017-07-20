FROM demo.sii.fr:5000/maven_3.3.9
LABEL authors="Matthieu Jaulin <mjaulin@sii.fr>"

ADD run /usr/local/bin/eclipse

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module fonts-droid

RUN wget http://mirror.ibcp.fr/pub/eclipse//technology/epp/downloads/release/neon/1a/eclipse-jee-neon-1a-linux-gtk-x86_64.tar.gz -O /tmp/eclipse.tar.gz -q && \
	tar -xf /tmp/eclipse.tar.gz -C /opt && \
	rm /tmp/eclipse.tar.gz

RUN chmod +x /usr/local/bin/eclipse
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8  
ENV LANGUAGE fr_FR:fr  
ENV LC_ALL fr_FR.UTF-8

ENTRYPOINT /usr/local/bin/eclipse

