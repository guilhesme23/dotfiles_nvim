vim.g.mapleader = " "
-- Save / Quit 
vim.keymap.set({'n', 'v'}, '<leader>w', ':w<cr>')
vim.keymap.set({'n', 'v'}, '<leader>q', ':q<cr>')

-- Movement
vim.keymap.set({'n', 'v'}, '<C-j>', '6jzz')
vim.keymap.set({'n', 'v'}, '<C-k>', '6kzz')
vim.keymap.set({'n', 'v'}, '<leader>e', '$')

-- Window management
vim.keymap.set({'n', 'v'}, '<leader>i', function()
    vim.cmd('vsplit')
end, {desc = "Split window vertically"})
vim.keymap.set({'n', 'v'}, '<leader>o', function()
    vim.cmd('split')
end, {desc = "Split window horizontally"})

-- Move between windows
vim.keymap.set({'n', 'v'}, '<A-h>', '<C-w>h')
vim.keymap.set({'n', 'v'}, '<A-j>', '<C-w>j')
vim.keymap.set({'n', 'v'}, '<A-k>', '<C-w>k')
vim.keymap.set({'n', 'v'}, '<A-l>', '<C-w>l')

-- Move windows
vim.keymap.set({'n', 'v'}, '<C-A-h>', '<C-w>H')
vim.keymap.set({'n', 'v'}, '<C-A-j>', '<C-w>J')
vim.keymap.set({'n', 'v'}, '<C-A-k>', '<C-w>K')
vim.keymap.set({'n', 'v'}, '<C-A-l>', '<C-w>L')

-- Resize windows
vim.keymap.set({'n', 'v'}, '<S-A-h>', '<C-w>2<')
vim.keymap.set({'n', 'v'}, '<S-A-j>', '<C-w>2-')
vim.keymap.set({'n', 'v'}, '<S-A-k>', '<C-w>2+')
vim.keymap.set({'n', 'v'}, '<S-A-l>', '<C-w>2>')

-- Navigate buffers
vim.keymap.set({'n', 'v'}, '<C-h>', ':bprevious<cr>')
vim.keymap.set({'n', 'v'}, '<C-l>', ':bnext<cr>')

