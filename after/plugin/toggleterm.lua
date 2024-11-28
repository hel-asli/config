-- Import toggleterm plugin
require("toggleterm").setup {
    -- Set terminal to float mode
    open_mapping = [[<c-\>]],  -- Ctrl+\ to toggle terminal
    direction = 'float',       -- Use floating window
    
    -- Floating window configuration
    float_opts = {
        -- Border configuration
        border = 'curved',     -- Options: 'single', 'double', 'shadow', 'curved'
        -- width = function() return vim.o.columns * 0.8 end,   -- 80% of screen width
        -- height = function() return vim.o.lines * 0.7 end,   -- 70% of screen height
        -- winblend = 10,         -- Transparency (0-100)
    },
    
    -- Additional optional settings
    start_in_insert = true,    -- Start terminal in insert mode
    insert_mappings = true,    -- Enable terminal mappings in insert mode
    terminal_mappings = true,  -- Enable terminal mappings in terminal mode
    
    -- Persist terminal size
    persist_size = true,
    
    -- Close the terminal window when a terminal process exits
    close_on_exit = true
}

-- Optional: Custom keymaps for terminal navigation
vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], { noremap = true, silent = true })  -- Exit terminal mode with Esc
-- vim.keymap.set('t', '<C-h>', [[<Cmd>wincmd h<CR>]], { noremap = true, silent = true })  -- Navigate left
-- vim.keymap.set('t', '<C-j>', [[<Cmd>wincmd j<CR>]], { noremap = true, silent = true })  -- Navigate down
-- vim.keymap.set('t', '<C-k>', [[<Cmd>wincmd k<CR>]], { noremap = true, silent = true })  -- Navigate up
-- vim.keymap.set('t', '<C-l>', [[<Cmd>wincmd l<CR>]], { noremap = true, silent = true })  -- Navigate right
