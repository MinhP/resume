FROM ubuntu:22.04
WORKDIR /app

RUN apt-get update && \
    apt-get install -y wget fontconfig libjpeg-turbo8 libx11-6 libxcb1 libxext6 libxrender1 xfonts-75dpi xfonts-base && \
    rm -rf /var/lib/apt/lists/*

RUN wget 'https://github.com/jgm/pandoc/releases/download/3.6.4/pandoc-3.6.4-1-amd64.deb'
RUN apt install './pandoc-3.6.4-1-amd64.deb'

RUN wget 'https://github.com/wkhtmltopdf/packaging/releases/download/0.12.6.1-2/wkhtmltox_0.12.6.1-2.jammy_amd64.deb'
RUN apt install './wkhtmltox_0.12.6.1-2.jammy_amd64.deb'

COPY ./src/github-markdown-light.css github-markdown-light.css
COPY --chmod=755 ./src/build.sh build.sh
