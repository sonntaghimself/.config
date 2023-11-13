-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here
--
vim.api.nvim_create_autocmd(
  { "BufRead,BufNewFile" },
  { pattern = { "*.rnw" }, command = ":set filetype=tex" }
)

vim.api.nvim_create_autocmd(
  { "BufRead,BufNewFile" },
  { pattern = { "*.tex", "*.rnw" }, command = ":set spelllang=en_us" }
)

vim.api.nvim_create_autocmd(
  { "BufRead,BufNewFile" },
  { pattern = { "*.tex", "*.rnw" }, command = ":set spell" }
)
