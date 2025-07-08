FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive

# Install required dependencies and tools
RUN apt-get update && apt-get install -y \
  wget \
  dpkg \
  libgl1-mesa-glx \
  libglib2.0-0 \
  libxcb1 \
  libx11-6 \
  libxext6 \
  libxrender1 \
  libxi6 \
  libsm6 \
  libxrandr2 \
  libfreetype6 \
  libfontconfig1 \
  libdbus-1-3 \
  libssl1.1 \
  && apt-get clean

# Download and extract the .deb
WORKDIR /tmp
RUN wget -O qfinder.deb https://github.com/EvilSupahFly/QNAP-Qfinder-Fix/releases/download/7.12.3.0527a/QNAPQfinderProUbuntux64-7.12.3.0527a-patched.deb \
  && dpkg -x qfinder.deb /opt/QfinderPro \
  && rm qfinder.deb

# Set environment variables
ENV LD_LIBRARY_PATH=/usr/local/lib/QNAP/QfinderPro
ENV QT_PLUGIN_PATH=/usr/local/bin/QNAP/QfinderPro
ENV QT_QPA_PLATFORM_PLUGIN_PATH=/usr/local/bin/QNAP/QfinderPro/platforms

WORKDIR /usr/local/bin/QNAP/QfinderPro

ENTRYPOINT ["./QfinderPro.sh"]