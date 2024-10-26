require 'core.options'
require 'core.keymaps'

local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
vim.opt.rtp:prepend(lazypath)

require('lazy').setup {
  require 'plugins.neotree',
  require 'plugins.colortheme',
  require 'plugins.treesitter',
  require 'plugins.telescope',
  require 'plugins.lsp',
  require 'plugins.autocompletion',
  require 'plugins.bufferline',
  require 'plugins.autosession',
  require 'plugins.undotree',
  require 'plugins.none-ls',
  require 'plugins.surround',
  require 'plugins.target',
  require 'plugins.autopairs',
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
  },
  require 'plugins.harpoon',
  require 'plugins.gitsigns',
  require 'plugins.fugitive',
  require 'plugins.autotag',
  require 'plugins.todo-comments',
  require 'plugins.indent-blankline',
  require 'plugins.vim-maximizer',
  require 'plugins.colorizer',
}
