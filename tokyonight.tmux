#!/usr/bin/env bash

CURRENT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
THEMES_DIR="$CURRENT_DIR/tokyonight.nvim/extras/tmux"

get-tmux-option() {
	local option value default
	option="$1"
	default="$2"
	value="$(tmux show-option -gqv "$option")"

	if [ -n "$value" ]; then
		echo "$value"
	else
		echo "$default"
	fi
}

main() {
	local theme
	theme="$(get-tmux-option "@tokyonight" "night")"
	themefile="$THEMES_DIR/tokyonight_${theme}.tmux"

	if [ -f "$themefile" ]; then
		# Undercurl
		set -g default-terminal "${TERM}"
		set -as terminal-overrides ',*:Smulx=\E[4::%p1%dm'                                                        # undercurl support
		set -as terminal-overrides ',*:Setulc=\E[58::2::%p1%{65536}%/%d::%p1%{256}%/%{255}%&%d::%p1%{255}%&%d%;m' # underscore colours - needs tmux-3.0

		tmux source-file "$themefile"
	else
		echo "$themefile could not be found"
		exit 1
	fi
}

main "$@"
