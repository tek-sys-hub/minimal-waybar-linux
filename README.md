# minimal-waybar-linux

A minimal, clean [Waybar](https://github.com/Alexays/Waybar) configuration for Linux — built for [Sway / Hyprland / <your compositor>].

![screenshot](./screenshot.png)
<!-- Add a screenshot of your bar here. This is the single highest-impact thing you can add — people judge waybar configs by looks first. -->

## Features

- Minimal, distraction-free layout
- Custom modules via shell scripts (`scripts/`)
- Easy to theme through a single `style.css`
<!-- Replace with what's actually true — e.g. "Battery, network, and volume modules", "Rounded pill-style modules", "Catppuccin color scheme", etc. -->

## Prerequisites

- [Waybar](https://github.com/Alexays/Waybar) installed (`pacman -S waybar`, `apt install waybar`, etc.)
- A Wayland compositor (Sway, Hyprland, ...)
- Fonts: <e.g. Font Awesome, JetBrains Mono Nerd Font — list whatever your config's `format-icons` actually reference>
- Any CLI tools your scripts shell out to (e.g. `pactl`, `nmcli`, `playerctl`) — list them here

## Installation

```bash
git clone https://github.com/tek-sys-hub/minimal-waybar-linux.git
cp -r minimal-waybar-linux/* ~/.config/waybar/
chmod +x ~/.config/waybar/scripts/*.sh
```

Reload Waybar:

```bash
killall -SIGUSR2 waybar
```

## File structure

```
.
├── config.jsonc     # Main Waybar config (modules, layout, ordering)
├── modules.json      # Module definitions, included by config.jsonc
├── style.css         # Styling / theme
└── scripts/           # Custom scripts powering custom/* modules
```

## Modules

<!-- List each module you actually ship, one line each. Example format below — replace with your real modules from config.jsonc / modules.json -->

| Module | Description |
|---|---|
| `clock` | Displays date and time |
| `battery` | Battery percentage and charging state |
| `network` | Wi-Fi / Ethernet status |
| `custom/<script-name>` | <what the script in scripts/ does> |

## Customization

- Colors and spacing: edit `style.css`
- Module order / which modules appear: edit `config.jsonc`
- Module behavior (format, icons, click actions): edit `modules.json`

## Troubleshooting

- Validate your config: `jq . ~/.config/waybar/config.jsonc`
- Check Waybar logs: `waybar -l debug`
- Missing icons? Make sure the fonts listed above are installed.

## License

<!-- e.g. MIT — add a LICENSE file to match -->

## Credits

Built on top of [Waybar](https://github.com/Alexays/Waybar) by Alexays.
