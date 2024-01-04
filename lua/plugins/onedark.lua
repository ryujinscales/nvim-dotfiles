return {
    'navarasu/onedark.nvim',
    enabled = false,
    -- priority = 100000000,
    config = function()
        -- require('onedark').setup {
        --     style = 'deep'
        -- }
        require('onedark').load()
        -- vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
        -- vim.cmd('hi NvimTreeNormal guibg=NONE')
        -- vim.cmd('hi NvimWindowHighlight guifg=#000000 guibg=#9c9991')
        -- vim.cmd('hi LineNr ctermbg=none guibg=none') -- To make number line transparent
        -- vim.cmd('hi NormalNC ctermbg=none guibg=none') -- To make inactive windows transparent
        -- vim.cmd('hi VertSplit guibg=NONE guifg=#1f1e1e')
    end
}

