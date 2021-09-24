FROM        --platform=$TARGETOS/$TARGETARCH debian:buster-slim

LABEL       author="Falaxir" maintainer="falaxir"

LABEL       org.opencontainers.image.source="https://github.com/pterodactyl/yolks"
LABEL       org.opencontainers.image.licenses=MIT

RUN         echo "deb http://ftp.fr.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list \
				&& echo "deb-src http://ftp.fr.debian.org/debian/ testing main contrib non-free" >> /etc/apt/sources.list \
				&& touch /etc/apt/preferences && echo "Package: *" >> /etc/apt/preferences && echo "Pin: release a=stable" >> /etc/apt/preferences \
				&& echo "Pin-Priority: 700" >> /etc/apt/preferences && echo " " >> /etc/apt/preferences && echo "Package: *" >> /etc/apt/preferences \
				&& echo "Pin: release a=testing" >> /etc/apt/preferences && echo "Pin-Priority: 650" >> /etc/apt/preferences \
				&& apt update && apt upgrade -y \
				&& apt install -y build-essential gcc-9 curl \
				&& apt --target-release testing install libstdc++6 \
				&& update-locale lang=en_US.UTF-8 \
				&& dpkg-reconfigure --frontend noninteractive locales \
				&& useradd -m -d /home/container -s /bin/bash container && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/

USER        container
ENV         USER=container HOME=/home/container
ENV         DEBIAN_FRONTEND noninteractive

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
