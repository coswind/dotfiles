local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.max_fps = 60
config.window_background_opacity = 0.85
config.macos_window_background_blur = 0
config.animation_fps = 1
config.cursor_blink_rate = 0
config.front_end = "OpenGL"

config.initial_cols = 140
config.initial_rows = 35
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true

config.color_scheme = "Catppuccin Frappe"
config.font_size = 18
config.font = wezterm.font_with_fallback({
  "Iosevka",
  "隶变-简",
})
config.default_cursor_style = "BlinkingBar"

return config
