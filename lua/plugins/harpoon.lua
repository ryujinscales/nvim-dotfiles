return {
    'ThePrimeagen/harpoon',
    dependencies = { 'nvim-lua/plenary.nvim' },
    lazy = false,
    config = function()
        require("telescope").load_extension('harpoon')
    end
}
