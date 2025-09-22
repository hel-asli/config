local wezterm = require 'wezterm'
local config = wezterm.config_builder()

-- Font
config.font = wezterm.font('JetBrainsMono Nerd Font')
config.font_size = 12.0

-- Colors (Catppuccin Frappé theme)
config.color_scheme = 'Catppuccin Frappe'

-- Window
config.window_padding = {
  left = 5,
  right = 5,
  top = 5,
  bottom = 5,
}
config.window_decorations = "RESIZE"
config.window_background_opacity = 0.90
config.enable_tab_bar = false

-- Cursor
config.default_cursor_style = 'BlinkingBlock'
config.cursor_blink_rate = 800

-- Scrollback
config.scrollback_lines = 5000

-- Disable audio bell
config.audible_bell = "Disabled"

-- Key bindings
config.keys = {
  -- Pane splitting
  { key = 'd', mods = 'CTRL|SHIFT', action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' } },
  { key = 'D', mods = 'CTRL|SHIFT', action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' } },
  
  -- Pane navigation
  { key = 'h', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Left' },
  { key = 'j', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Down' },
  { key = 'k', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Up' },
  { key = 'l', mods = 'CTRL|SHIFT', action = wezterm.action.ActivatePaneDirection 'Right' },
  
  -- Close pane
  { key = 'w', mods = 'CTRL|SHIFT', action = wezterm.action.CloseCurrentPane { confirm = true } },
}

return config
