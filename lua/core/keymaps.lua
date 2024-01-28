-- Leader Key
vim.g.mapleader = " "

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Save file
keymap("n", "<leader>w", ":w<cr>", opts)
