vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.keymap.set('v', 'y', 'myy`y')
vim.keymap.set('n', 'q:', ':q')
vim.keymap.set('v', 'p', '"_dP')
vim.keymap.set('i', ';;', '<Esc>A;')
vim.keymap.set('i', ',,', '<Esc>A,')
vim.keymap.set('n', '<Leader>l', ':nohlsearch<CR>')
vim.keymap.set('i', '<A-j>', '<Esc>:move .+1<CR>==gi')
vim.keymap.set('i', '<A-k>', '<Esc>:move .-2<CR>==gi')
vim.keymap.set('n', '<A-j>', ':move .+1<CR>==')
vim.keymap.set('n', '<A-k>', ':move .-2<CR>==')
vim.keymap.set('v', '<A-j>', ":move '>+1<CR>gv=gv")
vim.keymap.set('v', '<A-k>', ":move '<-2<CR>gv=gv")

-- Commentary Keymaps
vim.keymap.set('n', '<Leader>/', ':Commentary<CR>') 
vim.keymap.set('v', '<Leader>/', ':Commentary<CR>') 
