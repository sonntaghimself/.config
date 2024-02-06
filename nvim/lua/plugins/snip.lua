return {
  {
    "L3MON4D3/LuaSnip",
    version = "2", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
    build = "make install_jsregexp",
    config = function()
      require("luasnip.loaders.from_snipmate").load("~/.config/nvim/snippets/")

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
        --
        local function padding(cs, input_text)
          local spaces = box_width() - (2 * #cs)
          spaces = spaces - #input_text
          return spaces / 2
        end
        --
        -- https://github.com/L3MON4D3/LuaSnip/issues/151#issuecomment-912641351
        local comment_string = function()
          return require("luasnip.util.util").buffer_comment_chars()[1]
        end
        --
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
        s({ trig = "box" }, box({ box_width = 48 })),
        s({ trig = "bbox" }, box({})),
      })
    end,
    -- keys = function()
    --   return {}
    -- end,
  },
  {
    "hrsh7th/nvim-cmp",
    version = false, -- last release is way too old
    event = "InsertEnter",
    lazy = false,
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
      "saadparwaiz1/cmp_luasnip",
      "hrsh7th/cmp-emoji",
    },
    opts = function()
      vim.api.nvim_set_hl(0, "CmpGhostText", { link = "Comment", default = true })
      local cmp = require("cmp")
      return {
        completion = {
          completeopt = "menu,menuone,noinsert",
        },
        snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<Tab>"] = cmp.mapping.select_next_item({
            behavior = cmp.SelectBehavior.Insert,
          }),
          ["<C-p>"] = cmp.mapping.select_prev_item({
            behavior = cmp.SelectBehavior.Insert,
          }),
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          -- ["<Right>"] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
          ["<Right>"] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
          }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
        }),
        formatting = {
          format = function(_, item)
            local icons = require("lazyvim.config").icons.kinds
            if icons[item.kind] then
              item.kind = icons[item.kind] .. item.kind
            end
            return item
          end,
        },
        experimental = {
          ghost_text = {
            hl_group = "CmpGhostText",
          },
        },
      }
    end,
  },
  --
  -- {
  --     "hrsh7th/nvim-cmp",
  --     dependencies = {
  --         "hrsh7th/cmp-emoji",
  --     },
  --     ---@param opts cmp.ConfigSchema
  --     opts = function(_, opts)
  --         local has_words_before = function()
  --             unpack = unpack or table.unpack
  --             local line, col = unpack(vim.api.nvim_win_get_cursor(0))
  --             return col ~= 0
  --                 and vim.api
  --                         .nvim_buf_get_lines(0, line - 1, line, true)[1]
  --                         :sub(col, col)
  --                         :match("%s")
  --                     == nil
  --         end
  --
  --         local luasnip = require("luasnip")
  --         local cmp = require("cmp")
  --
  --         opts.mapping = vim.tbl_extend("force", opts.mapping, {
  --             ["<Tab>"] = cmp.mapping(function(fallback)
  --                 if cmp.visible() then
  --                     cmp.select_next_item()
  --                 -- You could replace the expand_or_jumpable() calls with expand_or_locally_jumpable()
  --                 -- this way you will only jump inside the snippet region
  --                 elseif luasnip.expand_or_jumpable() then
  --                     luasnip.expand_or_jump()
  --                 elseif has_words_before() then
  --                     cmp.complete()
  --                 else
  --                     fallback()
  --                 end
  --             end, { "i", "s" }),
  --             ["<S-Tab>"] = cmp.mapping(function(fallback)
  --                 if cmp.visible() then
  --                     cmp.select_prev_item()
  --                 elseif luasnip.jumpable(-1) then
  --                     luasnip.jump(-1)
  --                 else
  --                     fallback()
  --                 end
  --             end, { "i", "s" }),
  --         })
  --     end,
  -- },
  --
  -- NOTE: doesn't appear to work
  --
  -- {
  --   "honza/vim-snippets",
  -- },
}
