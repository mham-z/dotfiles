# dotfiles

Personal dotfiles for my [Fedora Linux](https://www.fedoraproject.org/) setup using the [Hyprland](https://github.com/hyprwm/hyprland) compositor.
> [!NOTE]
> These dotfiles are tailored to my Acer C933 Chromebook with its 1920x1080@60 screen, using no display scaling. YMMV.

### Highlights:
- Design language loosely following the [Rosé Pine theme](https://github.com/rose-pine)
- Horizontal status bar and workspaces
- Maximize screen real estate without sacrificing looks
- Not too flashy, mostly out of the way

## Setup
1. Install [GNU Stow](https://www.gnu.org/software/stow/)
2. Clone the repository into your home folder\
`git clone --recurse-submodules https://github.com/mham-z/dotfiles ~/dotfiles/`\
Aster, the shell built with Astal, is included as a submodule so you **must** use `--recurse-submodules`
3. Change directories and stow\
`cd ~/dotfiles/ && ./stow.sh`\
This symlinks everything in the dotfiles repository.
> [!WARNING]
> `stow.sh` will fail if conflicting files exist in `~/.config`. Back up and/or remove them first.