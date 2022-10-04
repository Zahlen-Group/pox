FROM mcr.microsoft.com/devcontainers/base:ubuntu-20.04

RUN apt-get update && apt-get install -y git \
           cmake \
           clang-12 \
           libclang-12-dev \
           libstdc++-10-dev \
           libpthread-stubs0-dev \
           libcap-ng-dev \
           doctest-dev \
           python3-pip \
           python3-fasteners \
           cppcheck \
# for tests
					 netcat-openbsd \
           wget \
# extra
					 tmux \
           cmake-curses-gui \
           python3-tblib \
           linux-tools-generic \
#          linux-headers-$(uname -r) \ # or just... not
           tcpdump \
           atop \
           python3-kazoo \
           zookeeper

RUN adduser pox && echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers && usermod -aG sudo pox
USER pox

#ENV PATH="/home/pox/.local/bin:$PATH"

WORKDIR /home/pox
RUN git clone -b halosaur --single-branch https://github.com/MurphyMc/pox.git
WORKDIR pox/ext
COPY --chown=pox:pox ext/ei ei
#RUN git clone -b dev --single-branch git@github.com:Zahlen-Group/ei.git
WORKDIR ei
#RUN scripts/build_all.sh --install --with-tests --clean --parallel

