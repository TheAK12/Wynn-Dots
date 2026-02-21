# Catppuccin Macchiato Eww Desktop Widgets

A premium, dynamic suite of desktop widgets built with [Eww (ElKowar's Wacky Widgets)](https://github.com/elkowar/eww), styled beautifully with the **Catppuccin Macchiato** color palette. Designed to look and feel like macOS but completely customizable in Linux.

## ✨ Features

- **macOS-Style Aesthetics**: Soft floating `box-shadow` depth and translucent progress tracks for a high-end look.
- **Dynamic Hover Animations**: Interactive elements fluidly lift (translate) and expand their shadows when hovered.
- **Smart Music Player**: Seamless integration with media players. Elegantly hides controls and shows "No Media Playing" when music is stopped instead of breaking layout.
- **System Monitor**: Live CPU, RAM, and Disk space tracking featuring Apple-style rounded progress bars.
- **Battery & Volume Tracker**: Real-time visual tracking of hardware status using Nerd Font icons.
- **Functional Calendar**: Current day highlighting in Catppuccin Green to easily stand out.
- **24-Hour Clock**: Centered, distraction-free clock format.

---

## 📦 Dependencies

To use these widgets, ensure you have the following packages installed on your system:

| Dependency | Purpose |
|------------|---------|
| `eww` | The core widget daemon. |
| `playerctl` | For the Music Player widget to fetch track metadata and control media. |
| `wpctl` (WirePlumber) | For accurately fetching and tracking audio volume levels. |
| `JetBrainsMono Nerd Font` | For displaying the crisp, monospaced tech icons across the widgets. |
| `Inter` & `Roboto` fonts | For the modern, beautiful sans-serif UI typography. |
| `awk`, `grep`, `sed` | Standard Unix text processing tools used heavily by the backend scripts. |

*Note: Ensure your compositor (e.g. Hyprland, Sway, etc.) allows windows to render below your other tiled windows to use them as true desktop widgets.*

---

## 🚀 Installation & Setup

1. **Clone/Copy** this configuration directory to your `~/.config/eww` folder.
   ```bash
   mkdir -p ~/.config/eww
   # Copy the contents (eww.yuck, eww.scss, scripts/) into the directory above
   ```

2. **Make Scripts Executable**
   Ensure the backend scripts like `get_music.sh` can run:
   ```bash
   chmod +x ~/.config/eww/scripts/*.sh
   ```

3. **Start the Eww Daemon**
   ```bash
   eww daemon
   ```

4. **Launch the Widgets!**
   You can open all windows at once by running:
   ```bash
   eww open clock
   eww open battery-volume
   eww open system-monitor
   eww open uptime
   eww open calendar
   eww open music-player
   ```

---

## 🎨 Customization

### Changing the Colors
The widgets use the incredible **Catppuccin Macchiato** palette. You can easily tweak the base theme by editing the variables at the top of `~/.config/eww/eww.scss`.

### Tweaking the Hover "Lift" Effect
By default, hovering a card gently lifts it with a deeper shadow. You can control this within the `eww.scss` file under the `@mixin card` block by adjusting the `&:hover` properties.

### Screen Positioning
The default positions (`y="10px"`, `y="160px"`, etc.) in `eww.yuck` are optimized for a `1920x1080` screen resolution in the top-right corner. 
To adjust where they spawn:
1. Open `eww.yuck`
2. Scroll to the bottom where the `defwindow` blocks live.
3. Modify the `:geometry` values to fit your specific screen resolution and preferred corner.
