require("catppuccin").setup({
  flavour = "auto",
  transparent_background = true,
  float = {
    transparent = true,
    solid = true,
  },
  no_italic = false,
  no_bold = false,
  no_underline = false,
  styles = {
    comments = {"italic"},
    conditionals = {"italic"},
    keywords = {"italic"}
  }
})
