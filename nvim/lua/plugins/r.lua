return {
  "jalvesaq/Nvim-R",
  config = function()
    vim.g.R_assign_map = "--"
  end,
  -- config = {
  --   nmap <F5> <Plug>RStart,
  -- vmap <Space> <Plug>RDSendSelection,
  -- nmap <Space> <Plug>RDSendLine,
  --   R_auto_start = 1,
  --   R_assign_map = "--",
  --   R_min_editor_width = 80,
  --   R_objbr_opendf = 0,
  -- " let R_rconsole_width = winwidth(0) / 2,
  -- autocmd VimResized * let R_rconsole_width = winwidth(0) / 2,
  -- },
}
