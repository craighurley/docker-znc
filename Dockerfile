FROM        centos:centos7
MAINTAINER  Craig Hurley

# Install ZNC
RUN         yum install epel-release -y && \
            yum install znc -y && \
            yum clean all

# Make required directories and generate a unique SSL key.
RUN         mkdir -p /var/lib/znc/.znc/configs && \
            znc --makepem --datadir /var/lib/znc/.znc && \
            chown -R znc:znc /var/lib/znc

EXPOSE      6697

# Make the ZNC application folder a mounted volume to persist data.
VOLUME      ["/var/lib/znc/.znc"]

# Make ZNC run as the restrictd user znc.
USER        znc

# Start the ZNC process and leave it running in the foreground.
CMD         ["znc", "--foreground", "--datadir", "/var/lib/znc/.znc"]
