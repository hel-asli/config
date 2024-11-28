require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "clangd", "clangd-format", "cpplint", "grammarly"},
        automatic_installation = true
})

local lspconfig = require("lspconfig")

lspconfig.lua_ls.setup {}
lspconfig.clangd.setup ({

  on_attach = function(client, bufnr)
        -- Example of key mappings for LSP features
        local opts = { noremap = true, silent = true }
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', 'ca', '<Cmd>lua vim.lsp.buf.code_action()<CR>', opts)
    end,
})
