local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.color_scheme = "tokyonight_storm"

config.font = wezterm.font("Berkeley Mono")
config.font_size = 18

config.window_close_confirmation = "NeverPrompt"

config.enable_tab_bar = false

config.window_decorations = "RESIZE"
return config
