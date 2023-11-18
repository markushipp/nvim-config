local opts = {noremap = true, silent = true}

-- Shorten the keymap function

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- General keymaps 
keymap("n", "<leader>w", "<cmd>write<CR>", opts)
keymap("n", "<leader>q", "<cmd>quit<CR>", opts)
keymap("n", "<leader>pr", "<cmd>cd /Users/v0id/Documents/Projects<CR>", opts)
keymap("n", "<leader>cf", "<cmd>cd /Users/v0id/.config<CR>", opts)
-- nvim-tree keymaps

keymap("n", "<leader>e", ":NvimTreeOpen<CR>", opts)

-- Telescope keymaps

keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
