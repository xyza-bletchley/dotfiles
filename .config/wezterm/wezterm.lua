-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()


-- SteadyBlock, BlinkingBlock, SteadyUnderline, BlinkingUnderline, SteadyBar, and BlinkingBar
config.default_cursor_style = 'SteadyUnderline'

config.window_frame = {
  font = wezterm.font { family = 'Roboto' },
  font_size = 12.0,
}

config.colors = {
  tab_bar = {
    active_tab = {
      bg_color = '#0076B6',
      fg_color = '#CEAB5D',
    },
    inactive_tab = {
      bg_color = '#004170',
      fg_color = '#CEAB5D',
      italic = true,
    }
  },
  cursor_bg = '#B0B7BC',
  cursor_fg = '#DA291C',
  background = "#001F2F",
  foreground = "#d3d3d3",
  selection_bg = "#005f73",
  selection_fg = "#d3d3d3",
}

-- Terminal configuration
config.window_decorations = 'RESIZE'
config.tab_bar_at_bottom = true
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.78
config.macos_window_background_blur = 20

-- Terminal pane configuration
config.keys = {

}

-- and finally, return the configuration to wezterm
return config
