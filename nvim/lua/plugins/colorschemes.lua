return {
    {
        "ellisonleao/gruvbox.nvim",
        lazy = false,
        priority = 1000,
    },
    {
        "sainnhe/everforest",
        lazy = false,
        priority = 1000,
        config = function()
            vim.g.everforest_enable_italic = false
            vim.g.everforest_disable_italic_comment = true
            vim.g.everforest_background = "hard"
            vim.g.everforest_ui_contrast = "high"
            vim.g.everforest_cursor = "purple"
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "everforest",
        },
    },
}
