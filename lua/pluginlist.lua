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
}