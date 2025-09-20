# NeoVim Nightly macOS

This repository contains the Homebrew formulae for NeoVim Nightly macOS.

## Installation

To install NeoVim Nightly for macOS using Homebrew, follow these steps:

1. **Add the Homebrew Formula Repository**:

```sh
brew tap limitLiu/formulae
```

2. **Install NeoVim Nightly**:

```sh
brew update
brew install --cask neovim-nightly
```

## Usage

After installation, you can run follow these steps:

```sh
# macOS (arm64)
sudo xattr -r -d com.apple.quarantine /opt/homebrew/bin/nvim /opt/homebrew/Caskroom/neovim-nightly/latest/nvim-macos-arm64/lib/nvim/parser/*.so
# macOS (x86_64)
sudo xattr -r -d com.apple.quarantine /usr/local/bin/nvim /usr/local/Caskroom/neovim-nightly/latest/nvim-macos-x86_64/lib/nvim/parser/*.so
```
