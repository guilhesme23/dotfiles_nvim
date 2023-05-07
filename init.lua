-- Plugins: - treesitter (better parsing)
-- - treesitter
-- - telescope (fuzzy find)
-- - lsp-config
-- - nvim-cmp or lsp-cmp?
-- - luasnip
-- - Setup diagnostics
-- - NerdTree? n sei ainda
-- - lualine
-- - theme (n lembro qual era ainda)
-- - plugin pra buffers?
-- - fugitive (git?)

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.tabstop = 4
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.listchars:append({space = '␣'})
vim.opt.list = true
vim.opt.laststatus = 3
vim.cmd [[colorscheme tokyonight-moon]]
-- Remaps
require('remaps')
require('plugins')
require("mason").setup()
