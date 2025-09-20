vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>f", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>c", ":NvimTreeClose<CR>", { noremap = true, silent = true })

-- Terminal keymaps
vim.keymap.set("n", "<leader>t", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.keymap.set("t", "<Esc>", "<C-\><C-n>", { noremap = true, silent = true })


