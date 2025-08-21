#!/bin/sh

echo "Setting up your Mac..."

# Prompt for hostname
read -p "Enter hostname for this Mac: " HOSTNAME
export HOSTNAME

# Check for Oh My Zsh and install if we don't have it
if test ! $(which omz); then
  /bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/HEAD/tools/install.sh)"
fi

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew bundle

# Create a Projects directory
mkdir $HOME/Projects

# Create projects subdirectories
mkdir $HOME/Projects/Docker
mkdir $HOME/Projects/Go
mkdir $HOME/Projects/Web

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the .dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/.dotfiles/.zshrc $HOME/.zshrc

# Set macOS preferences - we will run this last because this will reload the shell
source .macos
source ssh.sh

echo "Setup complete!"
