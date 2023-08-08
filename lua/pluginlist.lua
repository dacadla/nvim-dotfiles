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
        config = function()
            require('onedark').load()
        end
    },
}