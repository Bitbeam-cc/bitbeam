FROM debian:bullseye

# Install packages for building ruby
RUN apt update && \
    apt upgrade -y && \
    apt install -y software-properties-common && \
    apt-add-repository non-free && \
    apt update && \
    apt install -y \
        build-essential \
        git \
        ldraw-mklist \
        openscad \
        openscad-mcad \
        sqlite3 \
        wget \
        zip \
        && \
    wget https://github.com/unlimitedbacon/stl-thumb/releases/download/v0.3.1/stl-thumb_0.3.1_amd64.deb && \
    dpkg -i stl-thumb_0.3.1_amd64.deb || apt install -f -y && \
    apt clean

RUN cd /opt && \
    git clone https://github.com/ondratu/stl2dat-cp.git && \
    cd /opt/stl2dat-cp && \
    make && \
    ln -s /opt/stl2dat-cp/stl2dat /usr/bin/

CMD ["make"]
