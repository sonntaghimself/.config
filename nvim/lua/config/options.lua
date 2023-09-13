-- windows-local options
vim.opt.relativenumber = true
vim.opt.number = true
vim.opt.colorcolumn = "80"
vim.opt.wrap = true
vim.opt.textwidth = 80
vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2

------------------------
--      cmdline       --
------------------------
vim.api.nvim_command("let g:cmdline_vsplit=1")
vim.g.cmdline_follow_colorscheme = 0
-- vim.api.nvim_command("let g:cmdline_follow_colorscheme=1")
vim.api.nvim_command("let g:cmdline_term_width=80")
vim.g.cmdline_app = { python = "ipython" }
vim.api.nvim_command("let g:cmdline_map_send = '<localleader>l' ")
vim.api.nvim_command("let R_auto_start = 1")
vim.api.nvim_command("let R_min_editor_width = 80")
--TODO: not working; figure out how to set these options

vim.api.nvim_command('let g:vimtex_view_method = "skim"')
-- vim.opt.foldmarker = "# {{{{{,}}}}} #" -- Doesn't work yet

-- vim.o.guifont = "Anonymice nerd font"

require("luasnip.loaders.from_snipmate").load()
-- require("luasnip.loaders.from_snipmate").lazy_load("~/.config/nvim/snippets/r.snippets")
-- require("luasnip.loaders.from_snipmate").lazy_load("~/.config/nvim/snippets/tex.snippets")
-- require("luasnip.loaders.from_snipmate").lazy_load("~/.config/nvim/snippets/py.snippets")

-- generating Box Snippets
local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local f = ls.function_node

local function box(opts)
  -- NOTE: this had to be a function, otherwise `textwidth` was 0 during
  -- initialization. Still need to better understand when variables are
  -- populated.
  local function box_width()
    return opts.box_width or vim.opt.textwidth:get()
  end

  local function padding(cs, input_text)
    local spaces = box_width() - (2 * #cs)
    spaces = spaces - #input_text
    return spaces / 2
  end

  -- https://github.com/L3MON4D3/LuaSnip/issues/151#issuecomment-912641351
  local comment_string = function()
    return require("luasnip.util.util").buffer_comment_chars()[1]
  end

  return {
    f(function()
      local cs = comment_string()
      return string.rep(string.sub(cs, 1, 1), box_width())
    end, { 1 }),
    t({ "", "" }),
    f(function(args)
      local cs = comment_string()
      return cs .. string.rep(" ", math.floor(padding(cs, args[1][1])))
    end, { 1 }),
    i(1, "placeholder"),
    f(function(args)
      local cs = comment_string()
      return string.rep(" ", math.ceil(padding(cs, args[1][1]))) .. cs
    end, { 1 }),
    t({ "", "" }),
    f(function()
      local cs = comment_string()
      return string.rep(string.sub(cs, 1, 1), box_width())
    end, { 1 }),
  }
end

ls.add_snippets("all", {
  -- https://github.com/L3MON4D3/LuaSnip/wiki/Cool-Snippets#box-comment-like-ultisnips
  s({ trig = "box" }, box({ box_width = 24 })),
  s({ trig = "bbox" }, box({})),
})

-- ls.add_snippets("r", {
--   s({ trig = "pi" }, { "%>%" }),
-- })
--
-- require("catppuccin").setup({
--   flavour = "frappe", -- latte, frappe, macchiato, mocha
--   background = { -- :h background
--     light = "latte",
--     -- dark = "mocha",
--     -- dark = "frappe",
--   },
--   transparent_background = true, -- disables setting the background color.
--   show_end_of_buffer = false, -- shows the '~' characters after the end of buffers
--   term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
--   dim_inactive = {
--     enabled = false, -- dims the background color of inactive window
--     shade = "dark",
--     percentage = 0.15, -- percentage of the shade to apply to the inactive window
--   },
--   no_italic = false, -- Force no italic
--   no_bold = false, -- Force no bold
--   no_underline = false, -- Force no underline
--   styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
--     comments = { "italic" }, -- Change the style of comments
--     conditionals = { "italic" },
--     loops = {},
--     functions = { "bold" },
--     keywords = { "bold" },
--     strings = {},
--     variables = {},
--     numbers = {},
--     booleans = { "bold" },
--     properties = {},
--     types = {},
--     operators = {},
--   },
--   integrations = {
--     cmp = true,
--     gitsigns = true,
--     nvimtree = true,
--     telescope = true,
--     notify = false,
--     mini = false,
--     -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
--   },
-- })
