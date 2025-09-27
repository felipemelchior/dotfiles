# Dotfiles - Development Environment Management System

A comprehensive and modular system for automated configuration of Linux development environments, with support for multiple distributions and window managers.

<p align="center">
	<img src="https://raw.githubusercontent.com/mswell/dotfiles/master/images/dotfile.png" alt="Dotfiles Management System" style="max-width:100%;">
</p>

## 📋 Overview

This project offers a complete solution for setting up development environments, including:

- **Multiple Linux distributions** (Ubuntu, Arch Linux)
- **Various window managers** (Hyprland, i3wm, Qtile)
- **Development tools** (Python, Go, Neovim)
- **Security tools** (pentest/hacking tools)
- **Optimized configurations** for terminal and editors
- **Custom templates** for reconnaissance and security testing

## 🚀 Installation

### Prerequisites
- Linux system (Ubuntu 20.04+, Arch Linux)
- Git
- curl
- sudo (for system package installation)

### Quick Installation

```bash
git clone https://github.com/mswell/dotfiles.git
cd dotfiles
./install.sh
```

## 📊 Installation Menu

The `install.sh` script offers 7 main options:

| Option | Description | Target |
|--------|-----------|---------|
| **[1] Ubuntu VPS** | Complete setup for Ubuntu Server | Servers, web development |
| **[2] Archlinux with Hyprland** | Arch Linux + Wayland + Hyprland | Modern desktop, Wayland |
| **[3] Install Hacktools** | Pentest/security tools | Security testing, CTF |
| **[4] Install Pyenv** | Python environment with pyenv | Python development |
| **[5] Archlinux with i3wm** | Arch Linux + i3 Window Manager | Tiling desktop, X11 |
| **[6] Archlinux WSL** | Arch Linux on Windows Subsystem | WSL, cross-platform development |
| **[7] Archlinux DE** | Arch Linux + Desktop Environment | Traditional desktop environment |

## 🏗️ System Architecture

### Modular Structure
Each distribution has its own setup directory with specialized scripts:

```
setup/
├── ubuntu/          # Ubuntu scripts (base.sh, devel.sh, apps.sh, terminal.sh)
├── ArchHypr/        # Arch + Hyprland (base.sh, apps.sh, fonts.sh, terminal.sh)
├── ArchI3wm/        # Arch + i3wm (base.sh, apps.sh, fonts.sh, terminal.sh)
├── ArchWSL/         # Arch WSL (base.sh, apps.sh, terminal.sh)
└── ArchDE/          # Arch Desktop Environment (base.sh, apps.sh, fonts.sh, terminal.sh)
```

### Specialized Scripts
- **`pyenv_install.sh`**: Python version management
- **`install_golang.sh`**: Go language installation
- **`install_hacktools.sh`**: Security tools
- **`terminal.sh`**: Terminal configuration
- **`copy_dots.sh`**: Copy configuration files

## 🛠️ Included Features

### Development
- **Python**: pyenv for multiple versions
- **Go**: Installation and configuration
- **Neovim**: Modern editor with Lua
- **Git**: Optimized configurations
- **Tmux**: Terminal multiplexer

### Terminal & Shell
- **ZSH**: Shell with Powerlevel10k
- **Kitty**: GPU-accelerated terminal
- **WezTerm**: Modern terminal
- **Ghostty**: Wayland-native terminal
- **Fish**: Alternative shell

### Window Managers
- **Hyprland**: Wayland compositor
- **i3wm**: Tiling window manager
- **Qtile**: Python window manager
- **Waybar**: Wayland status bar

### Security Tools
- **Nuclei**: Vulnerability scanner
- **Custom templates**: Personalized templates
- **Recon tools**: Reconnaissance tools
- **MongoDB integration**: Database for results

### Themes & Appearance
- **Catppuccin**: Modern theme
- **Tokyo Night**: Dark theme
- **Cyberdream**: Cyberpunk theme
- **Oxocarbon**: Minimalist theme

## 📁 Configuration Structure

```
config/
├── zsh/              # ZSH configurations
│   ├── functions.zsh    # Custom functions
│   ├── alias.zsh        # Aliases
│   ├── custom.zsh       # Custom workflows
│   └── .zshrc           # Main file
├── kitty/            # Kitty themes
├── wezterm/          # WezTerm configurations
├── hypr/             # Hyprland configuration
├── i3/               # i3wm configuration
├── nvim/             # Neovim configuration
└── themes/           # Additional themes
```

## 🔧 ZSH Configurations

### Function Files
- **[`functions.zsh`](./config/zsh/functions.zsh)**: Utility functions
- **[`custom.zsh`](./config/zsh/custom.zsh)**: Custom workflow configurations
- **[`alias.zsh`](./config/zsh/alias.zsh)**: Productivity aliases

## 📖 Usage Guide

### Ubuntu VPS Setup (Option 1)
Ideal for servers and web development:
```bash
./install.sh # Choose option 1
```

### Arch Linux with Hyprland Setup (Option 2)
Modern desktop with Wayland:
```bash
./install.sh # Choose option 2
```

### Security Tools Installation (Option 3)
```bash
./install.sh # Choose option 3
```

### Python Environment (Option 4)
```bash
./install.sh # Choose option 4
```

## 🔒 Security and Hacking Tools

The system includes a vast collection of tools for:
- **Web Application Security**
- **Network Reconnaissance**
- **Vulnerability Assessment**
- **Penetration Testing**
- **Custom Nuclei Templates**

## 🛠️ Customization

### Adding New Distributions
1. Create directory in `setup/`
2. Add base.sh, apps.sh, terminal.sh scripts
3. Update menu in install.sh
4. Document changes

### Modifying Configurations
- Edit files in `config/`
- Setup scripts copy automatically
- Test changes before committing

## 🤝 Contributing

1. Fork the project
2. Create a feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 License

This project is licensed under the MIT License. See the [`LICENSE`](./LICENSE) file for details.

## 👤 Author

**Wellington Moraes**

---

<h6 align="center">
	<a href="https://raw.githubusercontent.com/mswell/dotfiles/master/LICENSE">MIT</a>
	© 2024
	Wellington Moraes
</h6>

## 🌐 Languages

- [Portuguese (Português)](./README.md) - Versão em português
- [English](./README_EN.md) - English version