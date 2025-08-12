-- Pull in the wezterm API
local wezterm = require("wezterm")
local config = wezterm.config_builder()

-- favorite font
favorite_font_en = "JetBrainsMono NFM";
favorite_font_kh = "Battambang";

-- LOOK AND FEEL
config.color_scheme = 'Catppuccin Mocha'
config.default_cursor_style = "BlinkingBar"
config.cursor_thickness = "2px"
config.animation_fps = 1
config.cursor_blink_rate = 500
config.term = "xterm-256color"
config.prefer_egl = true
config.window_background_opacity = 0.9
config.initial_cols = 96
config.initial_rows = 20
config.window_padding = {
  left = 18,
  right = 18,
  top = 18,
  bottom = 18,
}

-- FONT
config.cell_width = 1
config.font_shaper = "Harfbuzz"
config.font = wezterm.font_with_fallback {
  { family = favorite_font_en, weight = "Medium" },
  { family = favorite_font_kh, scale = 1.05 },
}
config.font_size = 18
config.line_height = 1.12

-- for khmer only (not working yet!)
config.cell_widths = {
  { first = 0x1780, last = 0x17FF, width = 1 },
}

-- TABS
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- BORDER
border_width_top_bottom = "0.08cell"
border_width_left_right = "0.16cell"
border_width_color = "#80a7e9"
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

-- Default Program (Shell)
config.default_prog = { "/usr/bin/fish", "-l" }

config.window_decorations = "NONE" 
return config
