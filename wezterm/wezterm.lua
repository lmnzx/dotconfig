local wezterm = require("wezterm")

return {
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	default_cwd = "/Users/lemon/Projects",
	audible_bell = "Disabled",
	use_fancy_tab_bar = false,
	default_prog = { "/opt/homebrew/bin/fish", "-l", "-c", "tmux attach || tmux" },
	line_height = 1,
	-- font = wezterm.font("CommitMono"),
	font = wezterm.font("MonoLisa Variable-Script"),
	font_size = 16.5,
	window_padding = {
		left = 5,
		right = 5, -- also the width of the scroll bar
		top = 5,
		bottom = 0,
	},
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	color_scheme = "Oxocarbon Dark (Gogh)",
}
