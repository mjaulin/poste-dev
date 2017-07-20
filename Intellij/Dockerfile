FROM demo.sii.fr:5000/maven_3.3.9
LABEL authors="Matthieu Jaulin <mjaulin@sii.fr>"

RUN apt-get update && apt-get install -y libgtk2.0-0 libcanberra-gtk-module fonts-droid git

RUN mkdir /opt/intellij
RUN wget https://download.jetbrains.com/idea/ideaIC-2016.3.tar.gz -O /tmp/intellij.tar.gz -q && \
	tar -xf /tmp/intellij.tar.gz -C /opt/intellij --strip 1 && \
	rm /tmp/intellij.tar.gz

ADD run /usr/local/bin/intellij

RUN chmod +x /usr/local/bin/intellij
RUN locale-gen fr_FR.UTF-8
ENV LANG fr_FR.UTF-8
ENV LANGUAGE fr_FR:fr
ENV LC_ALL fr_FR.UTF-8

ENTRYPOINT /usr/local/bin/intellij

