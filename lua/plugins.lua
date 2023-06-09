return require('packer').startup(function(use)
    -- Packer
    use 'wbthomason/packer.nvim'
    -- Theme
    use 'folke/tokyonight.nvim'

    -- Syntax Highlight and language parsing
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }
    use {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
        "neovim/nvim-lspconfig",
        run = ":MasonUpdate" -- :MasonUpdate updates registry contents
    }
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'L3MON4D3/LuaSnip'
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.1',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        "jose-elias-alvarez/null-ls.nvim",
        config = function()
            local nls = require('null-ls')
            if nls then
                nls.setup {
                    sources = {
                        nls.builtins.formatting.prettier
                    }
                }
            end
        end
    }
    use {
        "windwp/nvim-ts-autotag"
    }
end)
