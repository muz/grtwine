FROM debian

RUN dpkg --add-architecture i386 \
  && apt-get update \
  && apt-get install -y wine32 libwine fonts-wine \
  && rm -rf /var/lib/apt/lists/*
