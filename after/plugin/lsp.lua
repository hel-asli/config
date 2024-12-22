require('mason').setup({})
local ms = require('mason-lspconfig').setup({
        ensure_installed = {'clangd', 'lua_ls'},
        handlers = {
                function(server_name)
                        require('lspconfig')[server_name].setup({})
                end,
        }
})

local cmp = require('cmp')
cmp.setup({
        sources = {
                {name = 'nvim_lsp'},
                {name = 'buffer'},
        },
        mapping = cmp.mapping.preset.insert({
                ['m'] = cmp.mapping.confirm({select = true}),
                ['<C-j>'] = cmp.mapping.scroll_docs(-4),
                ['<C-k>'] = cmp.mapping.scroll_docs(4),
                ['<TAB>'] = cmp.mapping.select_next_item({behavior = cmp.SelectBehavior.Insert}),
                ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
                ['<C-Space'] = cmp.mapping.complete(),
        }),
})

