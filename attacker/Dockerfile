FROM kalilinux/kali-rolling
RUN apt-get update && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    openssh-client sshpass nmap curl netcat-openbsd proxychains4 iproute2 iputils-ping \
    mariadb-client ldap-utils procps ca-certificates && \
    rm -rf /var/lib/apt/lists/*
COPY proxychains4.conf /etc/proxychains4.conf
COPY banner.sh /etc/profile.d/00-green-armor.sh
WORKDIR /root
CMD ["/bin/bash"]
