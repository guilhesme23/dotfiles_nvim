-- Plugins: - treesitter (better parsing)
-- - treesitter
-- - telescope (fuzzy find)
-- - NerdTree? n sei ainda
-- - lsp-zero
-- - lualine
-- - theme (n lembro qual era ainda)
-- - plugin pra buffers?
-- - fugitive (git?)

print("Loaded configurations")

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
-- Remaps
require('remaps')

