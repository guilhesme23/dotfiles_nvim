-- Set up lspconfig.
local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason-lspconfig').setup({
    ensure_installed = {'tsserver', 'rust_analyzer'}
})

local on_attach = function(client)
    -- Define LSP Keymaps to current buffer
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, {buffer=0, desc='Display information about element under cursor'})
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {buffer=0, desc='Jump to definition'})
    vim.keymap.set('n', 'gT', vim.lsp.buf.type_definition, {buffer=0, desc='Jump to type definition'})
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {buffer=0, desc='Jump to implementation'})
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, {buffer=0, desc='Rename token under cursor'})

    vim.keymap.set('n', '<leader>dn', vim.diagnostic.goto_next, {buffer=0, desc='Jump to next diagnostic error'})
    vim.keymap.set('n', '<leader>dp', vim.diagnostic.goto_prev, {buffer=0, desc='Jump to prev diagnostic error'})
    vim.keymap.set('n', '<leader>\\', vim.lsp.buf.code_action, {buffer=0, desc='Show possible code actions'})
    vim.keymap.set({'n', 'v'}, '=', vim.lsp.buf.format, {buffer=0, desc='Format code'})

    -- Telescope lsp keymaps
    local builtin = require('telescope.builtin')
    if builtin then
        vim.keymap.set('n', '<leader>fr', builtin.lsp_references, {buffer=0, desc='Find references of token under cursor'})
    end
    if client.name == 'clangd' then
        vim.keymap.set('n', '<leader>ppt', '<cmd>!make test<cr>', {buffer=0, desc = "Run make test"})
        vim.keymap.set('n', '<leader>ppc', '<cmd>!make target=%<cr>', {buffer=0, desc = "Run make"})
    end
end

require("mason-lspconfig").setup_handlers {
    function (server_name) -- default handler (optional)
        require("lspconfig")[server_name].setup {
            on_attach = on_attach,
            capabilities = capabilities
        }
    end,
    ["rust_analyzer"] = function ()
        -- require("rust-tools").setup {}
    end,
    ["lua_ls"] = function ()
        require('lspconfig').lua_ls.setup {
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" }
                    }
                }
            }
        }
    end,
    ["html"] = function ()
        require('lspconfig').html.setup {
            filetypes = {"html", "handlebars"}
        }
    end,
    ["yamlls"] = function ()
        require('lspconfig').yamlls.setup {
            settings = {
                yaml = {
                    keyOrdering = false
                }
            }
        }
    end
}

-- Set up nvim-cmp.
local cmp = require'cmp'

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-n>'] = cmp.mapping.select_next_item(),
        ['<C-p'] = cmp.mapping.select_prev_item()
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },
    }, {
        { name = 'buffer' },
    })
})

-- Set configuration for specific filetype.
cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
        { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
        { name = 'buffer' },
    })
})

