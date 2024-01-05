return {
    'anuvyklack/windows.nvim',
    dependencies = {
        'anuvyklack/middleclass',
        'anuvyklack/animation.nvim'
    },
    event = 'BufEnter',
    config = function()
        vim.o.winwidth = 10
        vim.o.winminwidth = 10
        vim.o.equalalways = false
        require('windows').setup({
            ignore = {
                buftype = { "quickfix" },
                filetype = { "NvimTree", "neo-tree", "undotree", "gundo" }
            },
        })
    end
}

