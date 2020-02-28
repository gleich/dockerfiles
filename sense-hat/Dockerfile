FROM raspbian/stretch

LABEL maintainer="matthewgleich@gmail.com"
LABEL description="Image with everything you need to control the sense hat"

# Install python
RUN apt -yq update
RUN apt install -qy libffi-dev \
    libbz2-dev \
    liblzma-dev \
    libsqlite3-dev \
    libncurses5-dev \
    libgdbm-dev \
    zlib1g-dev \
    libreadline-dev \
    libssl-dev \
    tk-dev \
    build-essential \
    libncursesw5-dev \
    libc6-dev \
    openssl \
    git
RUN wget https://www.python.org/ftp/python/3.6.5/Python-3.6.5.tar.xz
RUN tar xf Python-3.6.5.tar.xz
RUN cd Python-3.6.5
RUN ./configure --enable-optimizations
RUN make -j -l 4
RUN sudo make altinstall
RUN cd ..

# Install pip
RUN curl -O https://bootstrap.pypa.io/get-pip.py
RUN sudo python3.6 get-pip.py

RUN apt install -yq sense-hat