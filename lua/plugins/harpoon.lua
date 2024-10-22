local local_plugins = {
  {
    'harpoon',
    dir = '~/.local/share/nvim/lazy/harpoon',
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader><leader>1', function()
        harpoon:list():replace_at(1)
      end)
      vim.keymap.set('n', '<leader><leader>2', function()
        harpoon:list():replace_at(2)
      end)
      vim.keymap.set('n', '<leader><leader>3', function()
        harpoon:list():replace_at(3)
      end)
      vim.keymap.set('n', '<leader><leader>4', function()
        harpoon:list():replace_at(4)
      end)
      vim.keymap.set('n', '<leader>m', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
      vim.keymap.set('n', '<C-t>', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<C-h>', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<C-k>', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<C-l>', function()
        harpoon:list():select(4)
      end)
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():select(1)
      end)
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():select(2)
      end)
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():select(3)
      end)
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():select(4)
      end)
    end,
  },
}

return local_plugins
