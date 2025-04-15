#!/bin/bash

# Script to install Python 3.11.9 via pyenv on Ubuntu-based systems
# Useful for pentesters and bug bounty hunters who want to use a specific Python version

# Install dependencies
sudo apt update && sudo apt install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev libffi-dev liblzma-dev python3-openssl git

# Install pyenv
curl https://pyenv.run | bash

# Add pyenv to shell startup config
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.bashrc
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.bashrc
echo 'eval "$(pyenv init --path)"' >> ~/.bashrc
echo 'eval "$(pyenv init -)"' >> ~/.bashrc
echo 'eval "$(pyenv virtualenv-init -)"' >> ~/.bashrc

# Apply changes
source ~/.bashrc

# Install and set Python 3.11.9 globally
pyenv install 3.11.9
pyenv global 3.11.9

# Upgrade pip
python3 -m ensurepip --upgrade
python3 -m pip install --upgrade pip

echo "Python 3.11.9 has been installed and set as global version using pyenv."
