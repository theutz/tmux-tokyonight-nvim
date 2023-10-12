# tmux-tokyonight-nvim

A tmux theme pack based on [tokyonight.nvim](https://github.com/folke/tokyonight.nvim) by [@folke](https://github.com/folke).

## Installation

### Install using [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

1.  Add plugin to the list of TPM plugins in `.tmux.conf`:

        set -g @plugin 'theutz/tmux-tokyonight-nvim'

2.  Press `prefix + I` to fetch the plugin and source it. The plugin should now
    be working.

Choose which theme is loaded by setting the `@tokyonight` option in your
`.tmux.conf`:

- `set -g @tokyonight 'night'` (default)
- `set -g @tokyonight 'moon'`
- `set -g @tokyonight 'storm'`
- `set -g @tokyonight 'day'`
