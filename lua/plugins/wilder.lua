return {
    'gelguy/wilder.nvim',
    event = 'CmdlineEnter',
    config = function()
        local wilder = require('wilder')
        wilder.setup({modes = {':', '/', '?'}})
        wilder.set_option('renderer', wilder.popupmenu_renderer({
          -- highlighter applies highlighting to the candidates
          highlighter = wilder.basic_highlighter(),
        }))
    end,
}

-- List of plugins not installed
-- Plug 'neovim/nvim-lspconfig'
-- Plug 'williamboman/mason.nvim'
-- Plug 'williamboman/mason-lspconfig.nvim'
-- Plug 'hrsh7th/nvim-cmp'
-- Plug 'L3MON4D3/LuaSnip'
-- Plug 'saadparwaiz1/cmp_luasnip'
-- Plug 'hrsh7th/cmp-nvim-lsp'
-- Plug 'hrsh7th/cmp-path'
-- Plug 'rafamadriz/friendly-snippets'
-- Plug 'onsails/lspkind.nvim'
-- Plug 'David-Kunz/markid'
-- Plug 'junegunn/limelight.vim' " Hyperfocused writing
-- Plug 'junegunn/goyo.vim' " Similar to limelight
-- Plug 'ryujinscales/headerfiles.vim'
-- phaazon/hop.nvim
-- Plug 'lewis6991/impatient.nvim'
-- Plug 'mhinz/vim-startify'
-- Plug 'rcarriga/nvim-notify'
--
--TODO
-- leap.nvim
