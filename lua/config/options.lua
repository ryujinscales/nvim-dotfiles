local opt = vim.opt

opt.encoding = 'UTF-8'
opt.mouse:append('a')
opt.number = true
-- opt.cursorline = true
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
opt.cursorline = true
opt.scrolloff = 3
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4

vim.cmd([[highlight Comment cterm=italic gui=italic]])
vim.cmd([[set fillchars=fold:\ ,vert:\│,eob:\ ,msgsep:‾]])

vim.diagnostic.config {
  virtual_text = {
    true
  },
}
