FROM fedora:34

RUN yum install -y \
  dos2unix \
  fluxbox \
  iputils \
  net-tools \
  psmisc \
  tigervnc-server-minimal \
  xterm \
  && yum clean -y all

ADD root /

RUN /bin/bash /opt/scripts/install.sh

USER me:me

VOLUME [ "/shared", "/input", "/output" ]

ENTRYPOINT [ "/opt/scripts/run.sh" ]
