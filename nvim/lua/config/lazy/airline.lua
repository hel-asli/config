 return {
    "vim-airline/vim-airline",
    config = function()
      vim.g.airline_powerline_fonts = 1
      vim.g.airline_theme = "dark"
      vim.g["airline#extensions#tabline#enabled"] = 1
    end
  }
