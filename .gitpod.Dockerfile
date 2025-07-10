FROM gitpod/workspace-full

# Install system dependencies for building SUI
RUN apt-get update && apt-get install -y \
    clang \
    cmake \
    libssl-dev \
    pkg-config \
    libudev-dev \
    build-essential \
    libclang-dev \
    curl \
    git \
    ca-certificates
