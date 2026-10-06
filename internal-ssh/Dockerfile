FROM ubuntu:24.04
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    openssh-server iproute2 ca-certificates && \
    mkdir -p /run/sshd /etc/ssh/sshd_config.d && \
    useradd -m -s /bin/bash coreops && \
    echo 'coreops:Ashfall-27!' | chpasswd && \
    printf '%s\n' \
      'PasswordAuthentication yes' \
      'PermitRootLogin no' \
      'AllowTcpForwarding no' \
      > /etc/ssh/sshd_config.d/99-green-armor.conf && \
    printf '%s\n' 'GA{CORRIDOR_COMPLETE}' > /home/coreops/flag3.txt && \
    chown coreops:coreops /home/coreops/flag3.txt && \
    chmod 0400 /home/coreops/flag3.txt && \
    rm -rf /var/lib/apt/lists/*
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D", "-e"]
