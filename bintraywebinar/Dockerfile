FROM artifactory-us.jfrog.info/busybox

MAINTAINER markg@jfrog.com

ADD jfrog /root/

COPY ./bintrayrocks-1.0.tgz /root/

RUN /bin/tar -xvf /root/bintrayrocks-1.0.tgz

RUN mv /exec /root/exec

CMD /root/exec/bintrayrocks.sh
