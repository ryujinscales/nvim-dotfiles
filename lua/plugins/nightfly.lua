return {
    'bluz71/vim-nightfly-colors',
    name = 'nightfly',
    lazy = false,
    priority = 1000,
    config = function()
	    vim.cmd('colorscheme nightfly')
	    -- vim.cmd('hi Normal guibg=NONE ctermbg=NONE')
	    -- vim.cmd('hi NvimTreeNormal guibg=NONE')
	    -- vim.cmd('hi NvimWindowHighlight guifg=#000000 guibg=#9c9991')
	    -- vim.cmd('hi LineNr ctermbg=none guibg=none') -- To make number line transparent
	    -- vim.cmd('hi NormalNC ctermbg=none guibg=none') -- To make inactive windows transparent
	    -- vim.cmd('hi VertSplit guibg=NONE guifg=#1f1e1e')
    end
}
