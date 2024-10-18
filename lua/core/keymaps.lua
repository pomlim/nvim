vim.g.mapleader = ' '
vim.keymap.set('n', '<leader>w', ':noa w<CR>')
vim.keymap.set('n', '<leader><leader>w', vim.cmd.w)
vim.keymap.set('n', '<C-j>', '<C-i>')
vim.keymap.set('n', '<tab>', 'g_')
vim.keymap.set('v', '<tab>', 'g_')

vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')
vim.keymap.set('n', '<leader>o', '<C-w>o')
vim.keymap.set('n', '<leader>i', vim.cmd.noh)
vim.keymap.set('n', '<leader><leader>q', vim.cmd.qa)
vim.keymap.set('n', '<leader>x', vim.cmd.wq)

vim.keymap.set('n', 'go', 'ms/')
vim.keymap.set('n', 'gu', 'ms?')

vim.keymap.set('n', '<leader>t', ':%bd <bar> e# <CR>')

vim.keymap.set('n', 'dc', 'gcc', { remap = true })
vim.keymap.set('v', 'dc', 'gc', { remap = true })

vim.keymap.set('n', '<leader>v', '`[v`]', { remap = true })

vim.cmd 'set <M-j>=\\ej'
vim.cmd 'set <M-k>=\\ek'
vim.cmd 'set <M-.>=\\e.'
vim.cmd 'set <M-,>=\\e,'
vim.cmd 'set <M-[>=\\e['
vim.cmd 'set <M-b>=\\eb'

-- Prime
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv")
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv")

vim.keymap.set('n', 'J', 'mzJ`z')

vim.keymap.set('n', '<C-d>', '<C-d>zz')
vim.keymap.set('n', '<C-u>', '<C-u>zz')

vim.keymap.set('n', 'n', 'nzzzv')
vim.keymap.set('n', 'N', 'Nzzzv')

-- Set Meta key mappings in Lua for <M-j> and <M-k>
vim.api.nvim_set_keymap('n', '<M-j>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-k>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-.>', ':vertical resize +4<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<M-,>', ':vertical resize -4<CR>', { noremap = true, silent = true })

vim.keymap.set('c', '<Tab>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-j>' or '<Tab>'
end, { expr = true })
vim.keymap.set('c', '<C-d>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-g>'
end, { expr = true })
vim.keymap.set('c', '<C-u>', function()
  return (vim.fn.getcmdtype() == '/' or vim.fn.getcmdtype() == '?') and '<C-t>'
end, { expr = true })

vim.keymap.set('n', '<leader>gw', '<cmd>set wrap!<CR>')

vim.api.nvim_set_keymap('i', '<C-e>', '<End>', { noremap = true, silent = true }) -- Mapping Ctrl+e to go to the end of the line
vim.api.nvim_set_keymap('i', '<C-a>', '<Home>', { noremap = true, silent = true }) -- Mapping Ctrl+a to go to the home of the line
vim.api.nvim_set_keymap('i', '<C-f>', '<Right>', { noremap = true, silent = true }) -- Mapping Ctrl+f to go to the right of the line
vim.api.nvim_set_keymap('i', '<C-b>', '<Left>', { noremap = true, silent = true }) -- Mapping Ctrl+b to go to the left of the line
