local opt = vim.opt

opt.encoding = 'UTF-8'
-- opt.mouse:append('a')
vim.cmd([[set mouse=]])
opt.number = true
opt.relativenumber = true
opt.autoread = true
opt.showmatch = true
opt.ignorecase = true
opt.smartcase = true
opt.incsearch = true
opt.undolevels = 800
opt.history = 800
opt.clipboard:append('unnamedplus')
opt.termguicolors = true
-- opt.noswapfile = true
opt.undofile = true
-- opt.cursorline = true
opt.scrolloff = 3
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
-- opt.colorcolumn = "80"

vim.cmd([[highlight Comment cterm=italic gui=italic]])
vim.cmd([[set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾]])
vim.cmd([[set signcolumn=yes:2]])

vim.diagnostic.config {
  virtual_text = {
    true
  },
  signs = true,
}

-- vim.cmd([[set nocursorline]]) -- Not working

vim.cmd([[set noshowmode]])

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end
