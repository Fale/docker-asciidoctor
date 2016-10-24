FROM fedora

MAINTAINER Guillaume Scheibel <guillaume.scheibel@gmail.com>

ENV JAVA_HOME /jdk1.8.0_20
ENV PATH $PATH:$JAVA_HOME/bin:/fopub/bin
ENV BACKENDS /asciidoctor-backends
ENV GVM_AUTO_ANSWER true
ENV ASCIIDOCTOR_VERSION "1.5.4"

RUN dnf install -y rubygem-asciidoctor-pdf \
  && dnf clean packages \

WORKDIR /documents
VOLUME /documents

CMD ["/bin/bash"]
