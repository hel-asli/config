-- Using lazy.nvim
return {
  "lervag/vimtex",
  config = function()
    vim.g.vimtex_view_method = 'zathura' -- or 'evince', 'okular'
  end
}

