# .dotfiles

Personal configuration files for various development tools.

## Contents

- **kitty** - Terminal emulator configuration
- **tmux** - Terminal multiplexer configuration
- **zsh** - Z shell configuration

## Installation

### Prerequisites

Install GNU Stow:
```bash
sudo apt install stow
```

Install the managed tools:
```bash
sudo apt install kitty tmux zsh
```

If you want to use the included ZSH configuration as your default shell:
```bash
chsh -s "$(which zsh)"
```

### Setup

1. Clone this repository to your home directory:
```bash
cd ~
git clone <repository-url> .dotfiles
```

2. Navigate to the dotfiles directory:
```bash
cd ~/.dotfiles
```

3. Apply configurations using stow:
```bash
stow kitty
stow tmux
stow zsh
```

## Dependencies

### ZSH
The ZSH configuration requires `fzf` (fuzzy finder):
```bash
sudo apt install fzf
```
