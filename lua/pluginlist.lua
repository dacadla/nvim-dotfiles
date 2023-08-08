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
    'folke/neodev.nvim',
    {
        -- code completion with nvim-cmp
        'hrsh7th/nvim-cmp',
        dependencies = {
            'L3MON4D3/LuaSnip',
            'saadparwaiz1/cmp_luasnip',
            'rafamadriz/friendly-snippets',
            'hrsh7th/cmp-nvim-lsp',
        },
    },
    {
        -- Treesitter
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    }
}