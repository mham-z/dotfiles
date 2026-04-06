# dotfiles

Personal dotfiles (configuration files) for my [Fedora Linux](https://www.fedoraproject.org/) setup using the [Hyprland](https://github.com/hyprwm/hyprland) compositor.
> [!NOTE]
> This is **specifically** tailored to my Acer C933 Chromebook with its 1920x1080@60 display, using no display scaling.

### Highlights:
- Design language loosely following the [Rosé Pine theme](https://github.com/rose-pine)
- Vertical status bar and workspaces
- Maximize screen real estate without sacrificing looks
- Not too flashy, mostly out of the way

### Credits:
- [Aditya Shakya](https://github.com/adi1090x) for the [Rofi configuration](https://github.com/adi1090x/rofi)

## Setup
1. Install [GNU Stow](https://www.gnu.org/software/stow/)
2. Clone the repository into your home folder\
`git clone --depth=1 https://github.com/mham-z/dotfiles.git ~/dotfiles/`
3. Change directories and stow\
`cd ~/dotfiles/ && ./stow.sh`\
This symlinks everything in the dotfiles repository, so make sure you delete any pre-existing files and folders in `~/.config`.