FROM debian:bullseye

# Install packages for building ruby
RUN apt update && \
    apt install -y software-properties-common && \
    apt-add-repository non-free && \
    apt update && \
    apt install -y \
        build-essential \
        git \
        openscad \
        openscad-mcad \
        ldraw-mklist \
        zip \
        && \
    apt clean

RUN cd /opt && \
    git clone https://github.com/ondratu/stl2dat-cp.git && \
    cd /opt/stl2dat-cp && \
    make && \
    ln -s /opt/stl2dat-cp/stl2dat /usr/bin/

CMD ["make"]
