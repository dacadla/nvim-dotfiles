-- return plugins
return {
    {
        -- comment.nvim
        "numtostr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },
    {
        -- onedark.nvim
        'navarasu/onedark.nvim',
        priority = 1000,
        config = function()
            require('onedark').load()
        end
    },
    {
        -- lualine.nvim and nvim-web-devicons
        'nvim-lualine/lualine.nvim',
        dependencies = {
            "nvim-tree/nvim-web-devicons"
        },
        config = function()
            require("lualine").setup({
                icons_enabled = true,
                theme = 'onedark',
            })
        end
    },
    -- LSP with mason.nvim
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
}