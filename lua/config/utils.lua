-- vim.cmd [[
--   augroup buffer
--     autocmd!
--     autocmd BufEnter * lua vim.cmd(':lua vim.wo.winbar=_G.nvim_bufferline()')
--     autocmd BufEnter * set showtabline=0
--   augroup END
-- ]]
