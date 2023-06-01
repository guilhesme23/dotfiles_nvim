-- Plugins: - treesitter (better parsing)
-- - telescope (fuzzy find)
-- - NerdTree? n sei ainda
-- - lualine
-- - theme (n lembro qual era ainda)
-- - plugin pra buffers?
-- - fugitive (git?)

-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = true
vim.opt.listchars:append({space = '␣'})
vim.opt.list = true
vim.opt.laststatus = 3
vim.cmd [[colorscheme tokyonight-moon]]

vim.filetype.add({
    extension = {
        handlebars = "html",
        hbs = "html"
    }
})

-- Remaps
require('remaps')
require('plugins')
require("mason").setup()
