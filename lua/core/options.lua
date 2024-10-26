-- Enable syntax highlighting
vim.cmd 'syntax on'

-- Set options using Neovim's Lua API
vim.opt.path:append '**' -- Add '**' to the path to search recursively
vim.opt.ignorecase = true -- Enable case-insensitive searching
vim.opt.number = true -- Show line numbers
vim.opt.incsearch = true -- Show search matches as you type
vim.opt.hlsearch = true -- Highlight search results
vim.opt.autoindent = true -- Enable auto-indentation
vim.opt.smartcase = true -- Enable smart case for searching
vim.opt.splitbelow = true -- Horizontal splits go below
vim.opt.splitright = true -- Vertical splits go to the right
vim.opt.mouse = 'a' -- Enable mouse in all modes
vim.opt.encoding = 'utf-8' -- Set file encoding to UTF-8
vim.opt.backspace = { 'indent', 'eol', 'start' } -- Configure backspace behavior
vim.opt.wildmenu = true -- Enable command-line completion wildmenu
vim.opt.relativenumber = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
vim.opt.scrolloff = 7
vim.opt.hidden = false
vim.cmd 'set wildcharm=<tab>'
vim.cmd 'set shortmess-=S'

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.api.nvim_create_autocmd('FileType', {
  pattern = { 'html', 'javascript', 'typescriptreact', 'lua', 'typescript', 'tsx' }, -- Include js, tsx , lua patterns
  callback = function()
    vim.opt_local.shiftwidth = 2
    vim.opt_local.tabstop = 2
    vim.opt_local.softtabstop = 2
  end,
})
