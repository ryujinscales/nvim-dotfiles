return {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    lazy = false,
    opts = {},
    config = function()
        require("ibl").setup({
            indent = { 
                char = '│'
            },
        })
    end
}
