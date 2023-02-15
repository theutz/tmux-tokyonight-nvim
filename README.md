# tmux-tokyonight-nvim

A tmux theme pack based on tokyonight.nvim by @folke.

## Installation

### Install manually

1.  Clone repo to local machine:

        git clone https://github.com/theutz/tmux-tokyonight-nvim.git ~/.tmux-tokyonight-nvim

2.  Source desired theme in your `~/.tmux.conf`:

         source-file "${HOME}/.tmux-tokyonight-nvim/themes/night.tmuxtheme"

    In some linux distributions you might have to remove the quotation marks
    from the `source-file` command to avoid a `no such file or directory` error:

         source-file ${HOME}/.tmux-tokyonight-nvim/themes/night.tmuxtheme

### Install using [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

1.  Add plugin to the list of TPM plugins in `.tmux.conf`:

        set -g @plugin 'theutz/tmux-tokyonight-nvim'

2.  Press `prefix + I` to fetch the plugin and source it. The plugin should now
    be working.

Choose which theme is loaded by setting the `@tokyonight` option in your
`.tmux.conf`:

- `set -g @tokyonight 'night'` (default)
- `set -g @tokyonight 'moon'` (default)
- `set -g @tokyonight 'storm'` (default)
- `set -g @tokyonight 'day'` (default)

## Themes

**Night (`night`):**

![night](previews/night.png)

**Day (`day`):**

![day](previews/day.png)

**Moon (`moon`):**

![moon](previews/moon.png)

**Storm (`storm`):**

![storm](previews/storm.png)
