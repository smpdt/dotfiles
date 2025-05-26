#!/bin/bash
# This runs automatically in new Codespaces

# Set up git
git config --global user.email "206221751+smpdt@users.noreply.github.com"

# Install zsh if needed
if ! command -v zsh &> /dev/null; then
    sudo apt update && sudo apt install -y zsh
fi

# Any other setup you want
