return {
    'olimorris/onedarkpro.nvim',
    lazy=false,
    priority=1000,
    config = function()
        -- Load the colorscheme
        require("onedarkpro").setup({
            colors = {
                onedark_dark = { bg = "#1f1f1f" }, -- Dark gray
            }
        })
        vim.cmd("colorscheme onedark_dark")
    end,
}
