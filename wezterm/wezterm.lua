local wezterm = require("wezterm")
local ethos = require("vance.Ethos")
local act = wezterm.action

ethos.apply()

local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
	wezterm.log_info("Config Initialized")
end

config.initial_rows = 500
config.initial_cols = 500

config.font_size = 18.0

config.enable_tab_bar = false

config.scrollback_lines = 1000

config.keys = {
	{ key = "d", mods = "CTRL", action = act.ScrollByPage(1) },
	{ key = "u", mods = "CTRL", action = act.ScrollByPage(-1) },
}

config.window_background_image = "/Users/vance/.config/wezterm/moon.jpg"

config.window_background_image_hsb = {
	-- Darken the background image by reducing it to 1/3rd
	brightness = 0.3,

	-- You can adjust the hue by scaling its value.
	-- a multiplier of 1.0 leaves the value unchanged.
	hue = 1.0,

	-- You can adjust the saturation also.
	saturation = 1.0,
}

config.window_padding = {
	left = 2,
	right = 2,
	top = 2,
	bottom = 2,
}

return config
