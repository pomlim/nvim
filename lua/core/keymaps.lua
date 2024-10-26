vim.g.mapleader = ' '
-- Enable alt key for create vim keybinding
vim.cmd 'set <M-j>=\\ej'
vim.cmd 'set <M-k>=\\ek'
vim.cmd 'set <M-.>=\\e.'
vim.cmd 'set <M-,>=\\e,'
vim.cmd 'set <M-[>=\\e['
vim.cmd 'set <M-b>=\\eb'
vim.cmd 'set <M-o>=\\eo'
vim.cmd 'set <M-d>=\\ed'
vim.cmd 'set <M-f>=\\ef'
vim.cmd 'set <M-q>=\\eq'
-- Save and quit shortcut
vim.keymap.set('n', '<leader>w', ':noa w<CR>')
vim.keymap.set('n', '<leader><leader>w', vim.cmd.w)
vim.keymap.set('n', '<leader><leader>q', vim.cmd.qa)
vim.keymap.set('n', '<leader>x', vim.cmd.bd)
-- Tab as End key
vim.keymap.set('n', '<C-j>', '<C-i>') -- Resolve ctrl+i automatically map to tab key
vim.keymap.set({ 'n', 'v' }, '<Tab>', 'g_', { noremap = true, silent = true })
-- Navigate to back and forward
vim.keymap.set('n', '<M-d>', '<C-o>')
vim.keymap.set('n', '<M-f>', '<C-i>')
-- Navigate to split pane
vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>i', vim.cmd.noh)
-- Map search in current file keybinding
vim.keymap.set('n', 'go', 'ms/')
vim.keymap.set('n', 'gu', 'ms?')
-- Comment out
vim.keymap.set('n', 'dc', 'gcc', { remap = true })
vim.keymap.set('v', 'dc', 'gc', { remap = true })
-- Copy and Paste shortcut
vim.keymap.set('v', '<leader>c', '"+y')
vim.keymap.set('n', '<leader>v', '`[v`]', { remap = true })
vim.keymap.set('v', '<leader>y', '"ay')
vim.keymap.set('v', '<leader>p', '"ap')
-- From ThePrimeagen
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")
vim.keymap.set('n', 'J', 'mzJ`z')
vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')
vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')
-- Manage files in tab bar
vim.api.nvim_set_keymap('n', '<M-j>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-.>', ':vertical resize +4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-,>', ':vertical resize -4<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>t', ':%bd <bar> e# <CR>') -- Close all buffers
-- Tab to select while search mode and ctrl-d, ctrl-u to scroll
vim.keymap.set('c', '<Tab>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-j>' or '<Tab>'
end, { expr = true })
vim.keymap.set('c', '<C-d>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-g>'
end, { expr = true })
vim.keymap.set('c', '<C-u>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-t>'
end, { expr = true })
-- Set emacs keybinding while insert mode
vim.api.nvim_set_keymap('i', '<C-e>', '<End>', { noremap = true, silent = true }) -- Mapping Ctrl+e to go to the end of the line
vim.api.nvim_set_keymap('i', '<C-a>', '<Home>', { noremap = true, silent = true }) -- Mapping Ctrl+a to go to the home of the line
vim.api.nvim_set_keymap('i', '<C-f>', '<Right>', { noremap = true, silent = true }) -- Mapping Ctrl+f to go to the right of the line
vim.api.nvim_set_keymap('i', '<C-b>', '<Left>', { noremap = true, silent = true }) -- Mapping Ctrl+b to go to the left of the line
-- ETC
vim.keymap.set('n', '<leader>gw', '<cmd>set wrap!<CR>')
vim.keymap.set('n', 'cd', ':')
vim.keymap.set('n', 'vae', 'ggVG')
vim.keymap.set('n', 'ss', 's')
vim.keymap.set('n', 'sf', 'F')
vim.keymap.set('n', 'st', 'T')
vim.keymap.set('n', '33j', '6j')
vim.keymap.set('n', '33k', '6k')
-- Jump after symbol
vim.keymap.set('n', '<leader>9', 'f(w')
vim.keymap.set('n', '<leader>,', 'f,w')
vim.keymap.set('n', '<leader>a', 'f<w')
vim.keymap.set('n', '<leader>.', 'f>w')
vim.keymap.set('n', '<leader>[', 'f{w')
vim.keymap.set('n', '<leader>r', 'f[w')
vim.keymap.set('n', '<leader>-', 'f_l')
vim.keymap.set('n', '<leader>=', 'f=w')
vim.keymap.set('n', '<leader>c', 'f{w')
vim.keymap.set('n', '<leader>;', 'f:w')

