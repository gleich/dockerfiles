FROM raspbian/desktop

# Meta data
LABEL version="1.0"
LABEL maintainer="matthewgleich@gmail.com"
LABEL description="Dart SDK in a docker image designed to run on arm32v7 based CPUs"

RUN wget http://src.chromium.org/svn/trunk/src/build/install-build-deps.sh
RUN chmod u+x install-build-deps.sh
RUN ./install-build-deps.sh --no-chromeos-fonts --arm
RUN sudo apt-get install libc6-dev-i386 g++-multilib
RUN svn co http://src.chromium.org/svn/trunk/tools/depot_tools
RUN export PATH=$PATH:`pwd`//depot_tools
RUN gclient config http://dart.googlecode.com/svn/branches/bleeding_edge/deps/all.deps
RUN gclient sync

# Cross compling
RUN git clone https://github.com/raspberrypi/tools.git
WORKDIR /dart
RUN ./tools/build.py -m release -a arm --toolchain=../tools/arm-bcm2708/gcc-linaro-arm-linux-gnueabihf-raspbian-x64/bin/arm-linux-gnueabihf create_sdk

# Setting env vars
RUN export DART_SDK=/home/pi/dart/dart-sdk
RUN export PATH=$DART_SDK/bin:$PATH
RUN export PATH="$PATH":"~/.pub-cache/bin"
