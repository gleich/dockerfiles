FROM homebrew/brew

# Meta data
LABEL author="matthewgleich@gmail.com"
LABEL description="My dev workspace for macos"

# Inital setup
RUN brew tap homebrew/core
RUN brew tap homebrew/services

# Installing languages:
RUN brew install python3
RUN brew install go
RUN brew tap dart-lang/dart
RUN brew install dart

# Installing command line utilities:
RUN brew install git

# Installing python binaries
RUN brew install opencv
RUN brew install numpy