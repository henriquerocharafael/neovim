-- Leader Key
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", { desc = 'Move focus to the left window' })
keymap("n", "<C-j>", "<C-w>j", { desc = 'Move focus to the lower window' })
keymap("n", "<C-k>", "<C-w>k", { desc = 'Move focus to the upper window' })
keymap("n", "<C-l>", "<C-w>l", { desc = 'Move focus to the right window' })

-- Save file
keymap("n", "<leader>w", ":w<cr>", opts)

-- Set highlight on search, but clear on pressing <Esc> in normal mode
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", opts)
