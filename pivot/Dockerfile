FROM ubuntu:24.04

RUN apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    openssh-server \
    iproute2 \
    iputils-ping \
    curl \
    netcat-openbsd \
    ca-certificates && \
    mkdir -p /run/sshd /etc/ssh/sshd_config.d && \
    useradd -m -s /bin/bash -g operator operator && \
    echo 'operator:Pivot-Access-27!' | chpasswd && \
    printf '%s\n' \
      'PasswordAuthentication yes' \
      'PermitRootLogin no' \
      'AllowTcpForwarding yes' \
      'GatewayPorts no' \
      > /etc/ssh/sshd_config.d/99-green-armor.conf && \
    rm -rf /var/lib/apt/lists/*

EXPOSE 22

CMD ["/usr/sbin/sshd", "-D", "-e"]
