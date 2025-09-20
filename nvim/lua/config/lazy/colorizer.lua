return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    vim.opt.termguicolors = true         -- enable 24-bit color in Neovim
    require("colorizer").setup()         -- activate colorizer
  end
}

