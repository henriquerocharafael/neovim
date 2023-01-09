local keymap = vim.keymap

-- Remap space as leader key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Save file
keymap.set('n', '<leader>w', ':write<cr>')

-- Telescope
keymap.set('n', '<leader>ff', ':Telescope find_files<cr>')
keymap.set('n', '<leader>e', ':NvimTreeToggle<cr>')

-- Move window
keymap.set('n', '<C-h>', '<C-w>h')
keymap.set('n', '<C-j>', '<C-w>j')
keymap.set('n', '<C-k>', '<C-w>k')
keymap.set('n', '<C-l>', '<C-w>l')
