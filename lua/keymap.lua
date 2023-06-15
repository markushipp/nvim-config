local opts = {noremap = true, silent = true}

-- Shorten the keymap function

local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key

keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- nvim-tree keymaps

keymap("n", "<leader>e", ":NvimTreeOpen<CR>", opts)

-- Telescope keymaps

keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
