-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()
-- favorite font
favorite_font = "JetBrainsMono NFM"

config.default_cursor_style = "BlinkingBar"
config.cursor_thickness = "2px"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color"
config.prefer_egl = true

config.font = wezterm.font(favorite_font, { weight = "Medium" })
config.font_size = 18
config.cell_width = 1
config.window_background_opacity = 0.9
config.initial_cols = 85
config.initial_rows = 22

config.window_padding = {
  left = 18,
  right = 18,
  top = 18,
  bottom = 18,
}

-- tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.color_scheme = 'Catppuccin Mocha'
config.window_frame = {
  font = wezterm.font(favorite_font),
  font_size = 8,
  active_titlebar_bg = "#0c0b0f",
}

border_width_top_bottom = "0.05cell"
border_width_left_right = "0.10cell"
border_width_color = "#cba6f7"

config.window_frame = {
  border_left_width = border_width_left_right,
  border_right_width = border_width_left_right,
  border_bottom_height = border_width_top_bottom,
  border_top_height = border_width_top_bottom,
  border_left_color = border_width_color,
  border_right_color = border_width_color,
  border_bottom_color = border_width_color,
  border_top_color = border_width_color,
}

config.default_prog = { "/usr/bin/fish", "-l" } -- Or path to other shell

config.window_decorations = "NONE | RESIZE" 
return config
