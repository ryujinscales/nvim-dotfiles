return {
    'smoka7/hop.nvim',
    event = 'BufEnter',
    config = function()
        require 'hop'.setup()
        vim.api.nvim_set_keymap('n', 's', '<cmd>HopWord<cr>', { noremap = true })
    end
}
