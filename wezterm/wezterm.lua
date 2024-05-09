local wezterm = require("wezterm")

local colors = require("lua/rose-pine").colors()
local window_frame = require("lua/rose-pine").window_frame()

-- WezTerm config

return {
	enable_tab_bar = false,
	window_decorations = "RESIZE",
	default_cwd = "/Users/lemon/Projects",
	audible_bell = "Disabled",
	use_fancy_tab_bar = false,
	-- default_prog = { "/opt/homebrew/bin/tmux", "new-session", "-A" },
	line_height = 1.25,
	font = wezterm.font("CommitMono"),
	font_size = 20,
	window_padding = {
		left = 5,
		right = 5, -- also the width of the scroll bar
		top = 0,
		bottom = 0,
	},
	keys = {
		{
			key = "f",
			mods = "CTRL",
			action = wezterm.action.ToggleFullScreen,
		},
	},
	colors = colors,
	window_frame = window_frame,
}
