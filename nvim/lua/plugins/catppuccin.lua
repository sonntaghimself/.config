return {
  "catppuccin/nvim",
  lazy = true,
  name = "catppuccin",
  flavour = "latte", -- latte, frappe, macchiato, mocha
  opts = {
    integrations = {
      alpha = true,
      cmp = true,
      gitsigns = true,
      illuminate = true,
      indent_blankline = { enabled = true },
      lsp_trouble = true,
      mini = true,
      native_lsp = {
        enabled = true,
        underlines = {
          errors = { "undercurl" },
          hints = { "undercurl" },
          warnings = { "undercurl" },
          information = { "undercurl" },
        },
      },
      navic = { enabled = true },
      neotest = true,
      noice = true,
      notify = true,
      nvimtree = true,
      semantic_tokens = true,
      telescope = true,
      treesitter = true,
      which_key = true,
      background = { -- :h background
        light = "latte",
        -- dark = "mocha",
        dark = "frappe",
      },
    },
    transparent_background = false, -- disables setting the background color.
    term_colors = false, -- sets terminal colors (e.g. `g:terminal_color_0`)
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    no_underline = false, -- Force no underline
    styles = { -- Handles the styles of general hi groups (see `:h highlight-args`):
      comments = { "italic" }, -- Change the style of comments
      conditionals = { "italic" },
      loops = {},
      functions = { "bold" },
      keywords = { "bold" },
      strings = {},
      variables = {},
      numbers = {},
      booleans = { "bold" },
      properties = {},
      types = {},
      operators = {},
    },
  },
}
