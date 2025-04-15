# Python 3.11.9 Setup Script for Pentesting / Bug Bounty

This script installs Python 3.11.9 via `pyenv` on Ubuntu-based systems.

## 💡 Why?

In bug bounty / pentesting, tools are often written for older Python versions and break on newer versions (like 3.12+). This script helps you set up a working environment where most tools will function smoothly.

## 🔧 What it does

- Installs required dependencies
- Installs pyenv
- Installs Python 3.11.9
- Sets it as global default
- Upgrades pip

## ✅ Usage

```bash
chmod +x install_python_3.11.9.sh
./install_python_3.11.9.sh
