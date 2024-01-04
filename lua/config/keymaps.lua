vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

local k = vim.keymap

-- General Keybindings
k.set('i', 'kj', '<Esc>', { noremap = true })
k.set('i', 'KJ', '<Esc>', { noremap = true })
k.set('i', '<Up>', '<NOP>', { noremap = true })
k.set('i', '<Down>', '<NOP>', { noremap = true })
k.set('i', '<Left>', '<NOP>', { noremap = true })
k.set('i', '<Right>', '<NOP>', { noremap = true })
k.set('n', '<Up>', '<NOP>', { noremap = true })
k.set('n', '<Down>', '<NOP>', { noremap = true })
k.set('n', '<Left>', '<NOP>', { noremap = true })
k.set('n', '<Right>', '<NOP>', { noremap = true })
-- k.set('n', '<C-Q>', '<S-V>', { noremap = true })
-- k.set('n', '<S-V>', '<C-Q>', { noremap = true })

k.set('n', '<leader>d', '<cmd>bdelete<cr>', { noremap = true, silent = true })

k.set('n', ';', ':', { noremap = true })

k.set('n', '<leader>f', ':%g/\\v', { noremap = true, silent = true })
-- ===============================================================
-- Plugins

-- Toggleterm
k.set('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true })

-- Nvim window
vim.api.nvim_set_keymap('n', '<leader>a', ':lua require("nvim-window").pick()<CR>', { silent = true })

-- Lazy
k.set('n', '<leader>z', ':Lazy<cr>', { noremap = true, silent = true })

-- Harpoon
k.set('n', '<leader>j', '<cmd>:lua require("harpoon.mark").add_file()<CR>', { noremap = true, silent = true })
k.set('n', '<leader><leader>', '<cmd>Telescope harpoon marks<CR>', { noremap = true, silent = true })
