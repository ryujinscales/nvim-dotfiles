return {
    'lukas-reineke/indent-blankline.nvim',
    main = 'ibl',
    lazy = false,
    opts = {},
    config = function()
        require('ibl').setup({
            indent = { 
                char = '│'
            },
            exclude = {
                buftypes = {
                    'terminal', -- Disabled buftypes for indent guides
                },
            },
            scope = {
                enabled = false, -- To not highlight current scope
                show_start = false,
                show_end = false,
            },
        })
    end
}
