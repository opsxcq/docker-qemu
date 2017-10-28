FROM debian:9.2

LABEL maintainer opsxcq@strm.sh

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
    # Useful packages
    git curl wget vim \
    # Libvirt packages
    bridge-utils\
    libvirt-clients\
    cpio \
    virtinst\
    # Qemu packages
    qemu\
    qemu-system\
    qemu-system-arm\
    qemu-system-x86\
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

VOLUME /vms

EXPOSE 5900
EXPOSE 8080
