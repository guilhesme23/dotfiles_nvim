-- Basic settings
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cmdheight = 0
vim.opt.tabstop = 2
vim.opt.shiftwidth = 0
vim.opt.expandtab = false
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
