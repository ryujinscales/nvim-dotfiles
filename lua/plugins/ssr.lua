return {
    'cshuaimin/ssr.nvim',
    module = 'ssr',
    event = 'BufEnter',
    config = function()
        require('ssr').setup()
    end
}

