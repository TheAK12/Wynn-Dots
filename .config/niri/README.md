# Niri Configuration Guide

This repository contains a sample configuration for [niri](https://github.com/yalter/niri), a scrolling Wayland compositor. Below you'll find instructions for setting up niri, installing dependencies, and understanding the provided configuration.

## THIS NIRI CONFIG IS CURRENTLY WORKING ONLY ON WIP BRANCH OF NIRI AS IT CONTAINS BLUR FEATURES.
In case you are on main/stable branch of niri then make sure that blur is implemented in that version before using this config.

---

## Dependencies

Before running niri, ensure you have the following installed:

- **niri** (Wayland compositor)
- **waybar** (status bar)
- **vicinae** (launcher/extension manager)
- **eww** (widget daemon)
- **swww** (wallpaper daemon)
- **avizo** (notification daemon)
- **dunst** (notification daemon)
- **ghostty** (terminal emulator)
- **swaylock** (screen locker)
- **volumectl** (audio control)
- **playerctl** (media control)
- **lightctl** (brightness control)

Install dependencies using your package manager (e.g., `apt`):

```sh
yay -Syu
yay -S niri waybar eww dunst swaylock playerctl lightctl volumectl avizo vicinae ghostty
# For other tools, refer to their GitHub pages or use cargo/flatpak as needed.
```

Some tools may require manual installation:
- [vicinae](https://github.com/yalter/vicinae)
- [swww](https://github.com/Horus645/swww)
- [avizo](https://github.com/aylur/avizo)
- [ghostty](https://github.com/mitchellh/ghostty)
- [volumectl](https://github.com/aylur/volumectl)
- [lightctl](https://github.com/aylur/lightctl)

---

## Configuration Overview

- **Input Devices:** Keyboard, touchpad, mouse, and trackpoint settings.
- **Outputs:** Monitor configuration (resolution, scale, position).
- **Layout:** Window gaps, column widths, focus ring, border, shadow, and struts.
- **Startup Applications:** Autostart for waybar, vicinae, eww, swww, avizo, dunst, etc.
- **Window & Layer Rules:** Custom behaviors for specific applications and layers.
- **Hotkeys:** Extensive keybindings for window management, launching apps, controlling audio/brightness, screenshots, and more.

---

## Setup Instructions

1. **Clone this repository:**
    ```sh
    git clone https://github.com/TheAK12/Wynn-Dots.git
    cd Wynn-Dots/.config/niri
    ```

2. **Install dependencies** (see above).

3. **Copy the config:**
    Place `config.kdl` in your niri config directory:
    ```sh
    mkdir -p ~/.config/niri
    cp config.kdl ~/.config/niri/config.kdl
    ```

4. **Start niri:**
    From a TTY or compatible Wayland session:
    ```sh
    niri
    ```

---

## Customization

- Edit `config.kdl` to adjust keybindings, window rules, startup applications, and appearance.
- Refer to the [niri wiki](https://yalter.github.io/niri/Configuration:-Introduction) for detailed documentation.

---

## Troubleshooting

- Ensure all dependencies are installed and available in your `$PATH`.
- Some applications may require additional configuration or permissions.
- For issues, consult the respective GitHub repositories or niri's documentation.

---

## Useful Links

- [niri GitHub](https://github.com/yalter/niri)
- [niri Wiki](https://yalter.github.io/niri/Configuration:-Introduction)
- [waybar](https://github.com/Alexays/Waybar)
- [vicinae](https://github.com/vicinaehq/vicinae/)
- [eww](https://github.com/elkowar/eww)
- [swww](https://github.com/Horus645/swww)
- [avizo](https://github.com/heyjuvi/avizo/)
- [ghostty](https://github.com/mitchellh/ghostty)

---

**Feel free to fork and modify this configuration to suit your workflow!**