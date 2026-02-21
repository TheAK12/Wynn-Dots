# 🍬 Waybar Floating Pills (Catppuccin Mocha)

A modern, highly-polished Waybar configuration featuring a transparent base with floating, dynamically grouped "pills". It utilizes the beautiful [Catppuccin Mocha](https://github.com/catppuccin/catppuccin) color palette and sleek minimalist Nerd Font iconography.

## 🌟 Features

*   **Aesthetic "Capsule" Design:** Modules are grouped into standalone floating islands with subtle 3D drop-shadows.
*   **Color-Coded Status Modules:** Quick-glance system metrics styled with distinct, harmonious Catppuccin accents (e.g. Memory is Sapphire, Backlight is Peach).
*   **Media Player Integration (MPRIS):** Displays currently playing media (Spotify, MPV, Firefox, etc.) directly in the left bar.
*   **Optimized Workflows:** Extensive scroll and click bindings on modules (brightness control, volume muting, bluetooth toggling) for rapid execution without needing a full system settings menu.
*   **Intelligent Module Alignment:** Asymmetric padding utilized on unique boundary icons (like the OS logo and the Wifi wedge) to visually center their bounding boxes.

## 🎛️ Modues & Shortcuts

This configuration maps a highly interactive user experience.

| Module | Action | Result |
| :--- | :--- | :--- |
| **Vicinae Logo (`󰣇`)** | Left-Click | Toggles the Vicinae application launcher/menu |
| **Workspaces** | Left-Click | Warps to the specified Niri workspace |
| **Clock / Calendar** | Scroll Up / Down<br>Right-Click | Shifts calendar month up / down<br>Changes calendar view mode |
| **MPRIS Player** | Display | Automatically truncates track titles and dims on pause |
| **Backlight (`󰃠`)** | Scroll Up / Down | Adjusts screen brightness by increments of 2% |
| **Bluetooth (`󰂯`)** | Left-Click<br>Right-Click | Opens `blueman-manager` GUI<br>Quickly toggles Bluetooth radio on/off entirely (`rfkill`) |
| **Pulseaudio (`󰕾`)** | Scroll Up / Down<br>Left-Click<br>Right-Click | Adjusts output volume by 5% increments<br>Opens `pavucontrol` mixer<br>**Instantly mutes/unmutes currently active sink** |
| **Network (`󰖩`)** | Right-Click | Opens `nm-connection-editor` GUI for deep configuration |
| **Power (`󰐥`)** | Left-Click | Opens the `wlogout` session screen overlay |

## 🎨 Styling Details

The user interface pulls strictly from standard Catppuccin Hex values to remain consistent across dynamic environment themes:

| Color Component | Hex Variable | Used By |
| :--- | :--- | :--- |
| **Pink** | `@pink` `#f5c2e7` | MPRIS Media Player |
| **Mauve** | `@mauve` `#cba6f7` | Vicinae Logo, Network/Wifi Status |
| **Sapphire & Sky** | `@sapphire` `#74c7ec` | CPU Usage |
| **Blue & Lavender** | `@blue` `#89b4fa` | Memory Usage, Bluetooth |
| **Teal** | `@teal` `#94e2d5` | Central Clock |
| **Green** | `@green` `#a6e3a1` | Optimal Battery States |
| **Peach & Yellow** | `@peach` `#fab387` | Pulseaudio (Audio), Backlight (Brightness) |
| **Red (Alerts)** | `@red` `#f38ba8` | Power Menu, Critical Battery/CPU warnings (featuring pulsing animations) |

### Note on Fonts
Ensure you have the **JetBrainsMono Nerd Font** installed and set as the default monospace font on your system, or several of the directional and boundary shapes may fail to render correctly!

## 📦 Dependencies
This config invokes several external applications and utilities for its shortcuts. You'll need the following installed for all modules to work flawlessly:
*   `vicinae` — Application launcher toggle
*   `niri` — To switch and manage workspaces (Niri Wayland Compositor)
*   `brightnessctl` — To control screen backlight with the scroll wheel
*   `blueman-manager` *and* `rfkill` — To open the Bluetooth GUI and hardware toggle
*   `pavucontrol` *and* `wpctl` (WirePlumber / PipeWire) — For volume mixer and instant hardware muting
*   `nm-connection-editor` — Network Manager GUI frontend

## 🔧 Installation / Reloading
If you make changes to this `config.jsonc` or its parent `style.css`, simply reload the bar without restarting your display manager by running:

```bash
killall -SIGUSR2 waybar
```
