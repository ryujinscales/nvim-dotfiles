local k = vim.keymap

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

k.set('n', ';', ':', { noremap = true })

k.set('n', '<leader>t', ':ToggleTerm<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>m', ':lua require("nvim-window").pick()<CR>', { silent = true })

-- k.set('n', ',', '<cmd>WhichKey<cr>', {noremap = true, silent = true})

k.set('n', '<leader>z', ':Lazy<cr>', { noremap = true, silent = true })
