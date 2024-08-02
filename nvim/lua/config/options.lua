-- vim.g.mapleader = ":"
vim.g.maplocalleader = ","
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.colorcolumn = "80"
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.termguicolors = true

vim.g.tex_flavour = "latex"
-- vim.cmd.colorscheme("melange")

------------------------
--      cmdline       --
------------------------
vim.api.nvim_command("let g:cmdline_vsplit=1")
vim.g.cmdline_follow_colorscheme = 0
-- vim.api.nvim_command("let g:cmdline_follow_colorscheme=1")
vim.api.nvim_command("let g:cmdline_term_width=80")
vim.g.cmdline_app = { python = "ipython" }
vim.api.nvim_command("let g:cmdline_map_start = '<leader>s' ")
vim.api.nvim_command("let g:cmdline_map_send = '<localleader>l' ")
vim.api.nvim_command("let R_auto_start = 1")
vim.api.nvim_command("let R_min_editor_width = 80")
vim.api.nvim_command('let g:vimtex_view_method = "skim"')
vim.api.nvim_command(
  'let g:vimtex_compiler_latexmk = {"aux_dir" : "../AuxFiles/", "out_dir" : "../", "continuous" : 1}'
)

------------------------
--        fold        --
------------------------
vim.opt.foldmethod = "marker"

----------------- grammarous -----------------
-- vim.g.grammarous_jar_url = "https://www.languagetool.org/download/LanguageTool-5.9.zip"
