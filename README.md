# My Neovim Configuration

A minimal, fast, and functional Neovim setup for Linux.

The statup time for this config is 53.686ms

---

## Features

- **Keymaps:** Short and intuitive leader key mappings. All keymaps are stored in one file (`./lua/config/keymaps.lua`) except a few plugin-specific exceptions:
  - `./lua/plugins/blink-cmp.lua` → for navigating or accepting completion suggestions
  - `./lua/plugins/mini.lua` → for mini.clues plugin
  - `./lua/plugins/leetcode.lua` → for navigating LeetCode menus

- **Plugins:**
  - `Harpoon2` for quick file navigation
  - `marksman` LSP for Markdown
  - `blink-cmp` for autocompletion
  - `Mini` plugins for hints and utilities
  - `LeetCode` plugin for coding practice

- **LSP Setup:** Uses `lspconfig` directly; no extra LSP manager.
- Linux package managers (`pacman`, `yay`) handle installation of language servers.

- **Color Scheme & Fonts:**
  - Gruvbox-inspired theme
  - Requires a Nerd Font (e.g., JetBrains Mono NF) for icons in statusline, keymaps, and menus

---

## Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/nvim-config.git ~/.config/nvim
```

## Disclaimer

A lot of this configuration was initially generated with ChatGPT or Claude.
Most of it is boilerplate, but it has been tested and works for my personal setup.

## Platform Support

⚠️ **Warning:** This configuration is designed for Linux.
Windows support is **not planned**, but contributions are welcome.
If a change does **not break Linux functionality**, I may merge it into the repository.

