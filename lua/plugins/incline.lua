return {
    'b0o/incline.nvim',
    event = 'BufEnter',
    config = function()
        require('incline').setup({
            ignore = {
                -- buftypes = { 'dashboard' },
                filetypes = { 'dashboard' },
                floating_wins = true,
                unlisted_buffers = true,
                wintypes = "special"
            },
        })
    end
}
