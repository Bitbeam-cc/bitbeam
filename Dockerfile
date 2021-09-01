FROM debian:bullseye

RUN apt update && \
    apt upgrade -y && \
    apt install -y software-properties-common && \
    apt-add-repository non-free && \
    apt update && \
    apt install -y \
        build-essential \
        git \
        imagemagick \
        ldraw-mklist \
        openscad \
        openscad-mcad \
        sqlite3 \
        wget \
        xvfb \
        zip \
        && \
    apt clean

RUN cd /opt && \
    git clone https://github.com/ondratu/stl2dat-cp.git && \
    cd /opt/stl2dat-cp && \
    make && \
    ln -s /opt/stl2dat-cp/stl2dat /usr/bin/

ENTRYPOINT xvfb-run make
