FROM gitpod/workspace-full

USER root

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

RUN brew install sui

# Optional: switch back to gitpod user (safer)
USER gitpod

