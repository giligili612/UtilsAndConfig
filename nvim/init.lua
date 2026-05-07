-- 启用真彩色
vim.opt.termguicolors = true

-- nvim-tree
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('basic')
require('plugins')
require('colorscheme')
require('tree')
-- require('lsp')
