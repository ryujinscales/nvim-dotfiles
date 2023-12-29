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
            buftypes = {
                'terminal', -- Disabled buftypes for indent guides
            },
        })
    end
}
