-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- vim.g.mapleader = ":"
vim.g.maplocalleader = ","
------------------------
--     arrow keys     --
------------------------
vim.api.nvim_set_keymap("n", "Up", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "Down", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "Right", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "Left", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "Up", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "Down", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "Right", "", { noremap = true, silent = true })
vim.api.nvim_set_keymap("i", "Left", "", { noremap = true, silent = true })

------------------------
--      tmux nav      --
------------------------
vim.api.nvim_set_keymap("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {})
vim.api.nvim_set_keymap("i", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {})
vim.api.nvim_set_keymap("v", "<C-h>", "<cmd> TmuxNavigateLeft<CR>", {})
vim.api.nvim_set_keymap("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {})
vim.api.nvim_set_keymap("i", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {})
vim.api.nvim_set_keymap("v", "<C-l>", "<cmd> TmuxNavigateRight<CR>", {})
vim.api.nvim_set_keymap("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {})
vim.api.nvim_set_keymap("i", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {})
vim.api.nvim_set_keymap("v", "<C-j>", "<cmd> TmuxNavigateDown<CR>", {})
vim.api.nvim_set_keymap("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {})
vim.api.nvim_set_keymap("i", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {})
vim.api.nvim_set_keymap("v", "<C-k>", "<cmd> TmuxNavigateUp<CR>", {})

------------------------
--       Nvim-R       --
------------------------
vim.api.nvim_set_keymap("n", ",", "<Plug>RDSendLine", {})
vim.api.nvim_set_keymap("v", ",", "<Plug>RDSendLine", {})
vim.g.R_assign_map = "--"
