local M = {}
local theme = require('yello_world.theme')

M.setup = function ()
  vim.cmd('hi clear')

  vim.o.background = 'dark'
  if vim.fn.exists('syntax on') then
    vim.cmd('syntax reset')
  end

  vim.o.termguicolors = true
  vim.g.colors_name = 'yello_world'

  theme.set_highlights()
end

return M
