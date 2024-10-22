return {
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
        suppressed_dirs = { '~/', '~/Projects', '~/Downloads', '/' },
        -- log_level = 'debug',
    },
    config = function()
        -- Load the colorscheme
        require("auto-session").setup({
            vim.keymap.set("n", "<leader><leader>r", ":Autosession search<CR>"),
            vim.keymap.set("n", "<leader><leader><leader>rd", ":Autosession delete<CR>"),
        })
    end,
}
