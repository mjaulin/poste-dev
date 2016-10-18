FROM java/jdk8
MAINTAINER Matthieu Jaulin "mjaulin@sii.fr"

ENV MAVEN_VERSION 3.3.9

RUN apt-get update && apt-get install -y curl

RUN curl -fsSL https://archive.apache.org/dist/maven/maven-3/$MAVEN_VERSION/binaries/apache-maven-$MAVEN_VERSION-bin.tar.gz | tar xzf - -C /usr/share \
  && mv /usr/share/apache-maven-$MAVEN_VERSION /usr/share/maven \
  && ln -s /usr/share/maven/bin/mvn /usr/bin/mvn

ENV MAVEN_HOME /usr/share/maven
ENTRYPOINT ["/usr/bin/mvn"]
