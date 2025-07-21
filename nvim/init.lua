require 'core.options'
require 'core.keymaps'
require 'core.snippets'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not vim.uv.fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end

local rtp = vim.opt.rtp
rtp:prepend(lazypath)

require('lazy').setup {
  require 'plugins.neo-tree',
  require 'plugins.colortheme',
  require 'plugins.bufferline',
  require 'plugins.autocompletion',
  require 'plugins.lsp',
  require 'plugins.none-ls',
  require 'plugins.avante',
  require 'plugins.lualine',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.comment',
  require 'plugins.telescope',
  require 'plugins.gitsigns',
  require 'plugins.alpha',
  require 'plugins.indent-blankline',
  require 'plugins.aerial',
  require 'plugins.misc',
}
