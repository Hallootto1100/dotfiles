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

Note: install a proper emoji fallback font as well (for example `fonts-noto-color-emoji`) so emoji render correctly in the terminal.

The tmux configuration also expects the Tmux Plugin Manager (TPM) to be installed before you use the bundled tmux setup:
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
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

4. Start tmux and install the configured plugins with `prefix + I` (`prefix` is usually `Ctrl-b`):
```bash
tmux
```

## Dependencies

### tmux
The tmux configuration requires TPM (Tmux Plugin Manager):
```bash
git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
```

### ZSH
The ZSH configuration requires `fzf` (fuzzy finder):
```bash
sudo apt install fzf
```
