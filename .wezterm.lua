local wezterm = require 'wezterm';

return {
  -- Font settings
  font = wezterm.font("JetBrains Mono"), -- Replace with any font of your choice
  font_size = 12.0,                      -- Adjust font size
  harfbuzz_features = {"calt=0", "clig=0", "liga=0"}, -- Disable ligatures if you prefer

  -- Arabic font support (add a fallback for Arabic)
  font_rules = {
    {
      intensity = "Normal",
      italic = false,
      font = wezterm.font_with_fallback({
        "JetBrains Mono",         -- Primary font
        "Noto Sans Arabic",       -- Fallback font for Arabic
        "Fira Code"
      }),
    },
  },


  -- Color scheme
  color_scheme = "Gruvbox Dark",   -- Choose a color scheme or replace with your favorite
  enable_scroll_bar = true,        -- Enable scroll bar
warn_about_missing_glyphs=false,
  -- Tab bar settings
  hide_tab_bar_if_only_one_tab = true,  -- Hide the tab bar if only one tab is open
  use_fancy_tab_bar = false,            -- Disable fancy tab bar styling

  -- Window settings
  window_padding = {
    left = 10,
    right = 10,
    top = 10,
    bottom = 10,
  },

  -- Enable Wayland (for Linux systems)
  --
  enable_wayland = true,

   -- Wallpaper settings
  window_background_image = "/home/hamza/Downloads/matrix-program-falling-data-illustration-green-code-black-3508x2480-3292.jpg",  -- Replace with your wallpaper file path
  window_background_image_hsb = {
    brightness = 0.1,   -- Set brightness level (1.0 is normal)
    hue = 1.0,          -- Hue adjustment (1.0 is no change)
    saturation = 1,   -- Saturation level (1.0 is full color)
  },

  -- Background opacity and alignment
 -- window_background_image_opacity = 0.5,  -- Set opacity (0.0 is fully transparent, 1.0 is fully opaque)

  -- Other appearance settings
  window_background_opacity = 0.95,   -- Set window background opacity
  adjust_window_size_when_changing_font_size = false, -- Keep window size consistent
}

