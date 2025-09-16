vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.smartindent = true
vim.opt.termguicolors = true
vim.g.mapleader = " "

vim.opt.rtp:prepend("~/.local/share/nvim/lazy/lazy.nvim")

require("lazy").setup({
	  -- Theme
  { "ellisonleao/gruvbox.nvim", priority = 1000, config = true },

  -- File explorer
  { "nvim-tree/nvim-tree.lua", config = true },

  -- Status line
  { "nvim-lualine/lualine.nvim", config = true },

  -- Telescope (fuzzy finder)
  { "nvim-telescope/telescope.nvim", dependencies = { "nvim-lua/plenary.nvim" } },

  -- Treesitter (better syntax highlighting)
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
})

vim.cmd("colorscheme gruvbox")


vim.o.guifont = "JetBrainsMono Nerd Font:h14"
vim.api.nvim_set_hl(0, "Normal", {bg = "none" })
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>")
vim.keymap.set("n", "<leader>q", ":quit<CR>")
vim.keymap.set("n", "<leader>w", ":write<CR>")

