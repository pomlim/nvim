return { -- Collection of various small independent plugins/modules
  'tpope/vim-surround',
  vim.keymap.set('n', 'sa', '<Plug>Ysurround', {}),
  vim.keymap.set('n', 'sd', '<Plug>Dsurround', {}),
  vim.keymap.set('n', 'sc', '<Plug>Csurround', {}),
  vim.keymap.set('n', 'sas', '<Plug>Yssurround', {}),
  vim.keymap.set('x', 's', '<Plug>VSurround', {}),
}
