#!/usr/bin/env bash
set -e

echo "🚀 Cloning SUI repo..."
git clone https://github.com/MystenLabs/sui.git $HOME/sui || true
cd $HOME/sui
git checkout main

echo "🔧 Building SUI from source..."
cargo build --release

# Add SUI binaries to PATH
echo 'export PATH="$HOME/sui/target/release:$PATH"' >> ~/.bashrc
export PATH="$HOME/sui/target/release:$PATH"

echo "✅ SUI CLI Installed!"
sui --version
