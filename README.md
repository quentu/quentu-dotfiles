# Quentu Dotfiles

My personal configuration files for my **Arch Linux** setup.

This repository serves as a backup of my configuration and makes it easier to reproduce my environment across machines.

## Stack

* **OS:** Arch Linux
* **Window Manager:** Hyprland
* **Display Server:** Wayland

## Configurations

This repository contains configuration files for various programs used in my setup. Currently I only have my hyprland configuration files.

```
.config/
├── hypr/
└── ...
```

More configurations may be added over time.

## Installation

Clone the repository:

```bash
git clone https://github.com/USERNAME/dotfiles.git
cd dotfiles
```

Configurations can then be copied or symlinked into their appropriate locations under `~/.config/`.

For example:

```bash
ln -s ~/dotfiles/.config/hypr ~/.config/hypr
```

> **Note:** These dotfiles are primarily maintained for my own Arch Linux setup. They may require additional packages, dependencies, or modifications to work correctly on another system.


## Disclaimer

These configurations are tailored to my personal setup and hardware. Use them as a reference or starting point rather than expecting everything to work out of the box.
