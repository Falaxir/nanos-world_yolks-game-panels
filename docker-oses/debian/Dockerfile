FROM        debian:bullseye

LABEL       author="Falaxir" maintainer="falaxir"

LABEL       org.opencontainers.image.source="https://github.com/Falaxir/nanos-world_yolks-game-panels"
LABEL       org.opencontainers.image.licenses=MIT

RUN         apt-get clean && apt-get update && apt-get install -y locales
RUN         locale-gen en_US.UTF-8
RUN         apt upgrade -y \
				&& apt install -y build-essential wget libstdc++6 git tar ca-certificates openssl fontconfig curl \
				&& update-locale lang=en_US.UTF-8 \
				&& dpkg-reconfigure --frontend noninteractive locales \
				&& useradd -m -d /home/container -s /bin/bash container && export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/lib/x86_64-linux-gnu/

USER        container
ENV         USER=container HOME=/home/container
ENV         DEBIAN_FRONTEND noninteractive

WORKDIR     /home/container

COPY        ./entrypoint.sh /entrypoint.sh
CMD         [ "/bin/bash", "/entrypoint.sh" ]
