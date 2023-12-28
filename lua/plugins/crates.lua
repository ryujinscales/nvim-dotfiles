return {
    'saecki/crates.nvim',
    tag = 'stable',
    dependencies = { 'nvim-lua/plenary.nvim' },
    event = 'InsertEnter',
    config = function()
        require('crates').setup({})
        require('crates').show({})
    end,
}
