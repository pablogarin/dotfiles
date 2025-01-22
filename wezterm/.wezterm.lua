local wezterm = require 'wezterm'

local config = wezterm.config_builder()

config.color_scheme = "Cyberdyne"
config.font = wezterm.font {
  family = 'MesloLGS Nerd Font Mono',
  weight = 'Bold'
}

-- Tab config
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.tab_bar_at_bottom = true

-- Window opacity
config.window_background_opacity = 0.6

return config
