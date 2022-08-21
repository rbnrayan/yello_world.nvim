local M = {}

M.setup = function ()
  local hl_groups = require('yello_world.highlights').groups()

  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'yello_world'

  for group, hl in pairs(hl_groups) do
    vim.api.nvim_set_hl(0, group, hl)
  end
end

return M
