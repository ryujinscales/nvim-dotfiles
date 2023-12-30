return {
    'gelguy/wilder.nvim',
    event = 'CmdlineEnter',
    config = function()
        local wilder = require('wilder')
        -- wilder.setup({modes = {':', '/', '?'}})
        wilder.setup({modes = {':'}})
        wilder.set_option('renderer', wilder.popupmenu_renderer({
          -- highlighter applies highlighting to the candidates
          highlighter = wilder.basic_highlighter(),
        }))
        -- wilder.set_option('renderer', wilder.popupmenu_renderer(
        --   wilder.popupmenu_palette_theme({
        --     -- 'single', 'double', 'rounded' or 'solid'
        --     -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
        --     border = 'rounded',
        --     max_height = '75%',      -- max height of the palette
        --     min_height = 0,          -- set to the same as 'max_height' for a fixed height window
        --     prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
        --     reverse = 0,             -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
        --   })
        -- ))
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
