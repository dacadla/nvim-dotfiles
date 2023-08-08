-- return plugins
return {
    {
        -- comment.nvim
        "numtostr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end
    },
}