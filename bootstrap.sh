#!/bin/bash
set -e

REPO_URL="https://github.com/Seesa-cz/dotfiles.git"
PLAYBOOK="ubuntu-desktop.yml"

echo "=== Instalace závislostí ==="
sudo apt-get install -y ansible git curl

echo "=== Spuštění playbooku ==="
ansible-pull -U "$REPO_URL" "$PLAYBOOK" --ask-become-pass
