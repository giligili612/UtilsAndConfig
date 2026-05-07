-- define common options
local opts = {
    noremap = true,      -- non-recursive 非递归映射
    silent = true,       -- do not show message 静默执行
}

-- 支持鼠标
vim.opt.mouse = 'a' 

-- Tab
vim.opt.tabstop = 4 
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4  
vim.opt.expandtab = true

-- UI 
vim.opt.number = true
vim.opt.cursorline = true
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"

-- Search

vim.opt.incsearch = true
vim.opt.hlsearch = true
-- 在normal模式下直接按<Esc>即可清掉搜索出的高亮结果
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
-- 全小写是模糊匹配，若存在大写则是精确匹配
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Code

-- jk 或 kj 快速退出插入模式
vim.keymap.set('i', 'jk', '<Esc>', opts)
vim.keymap.set('i', 'kj', '<Esc>', opts)

-- 括号补全
vim.keymap.set('i', '(', '()<Esc>i', opts)
vim.keymap.set('i', '[', '[]<Esc>i', opts)
vim.keymap.set('i', '{', '{}<Esc>i', opts)
vim.keymap.set('i', '"', '""<Esc>i', opts)

-- 移动光标
vim.keymap.set('i', '<A-h>', '<Left>', opts)   -- Alt/Option + h
vim.keymap.set('i', '<A-j>', '<Down>', opts)   -- Alt/Option + j
vim.keymap.set('i', '<A-k>', '<Up>', opts)     -- Alt/Option + k
vim.keymap.set('i', '<A-l>', '<Right>', opts)  -- Alt/Option + l
vim.keymap.set('i', '<A-b>', '<C-o>^', opts)   -- 行首（非空白）
vim.keymap.set('i', '<A-e>', '<C-o>$', opts)   -- 行尾

-- 分屏切换窗口
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- 补全菜单体验
vim.opt.completeopt = { "menuone", "noselect", "popup" }
vim.opt.pumheight = 10

-- 底部打开终端
vim.keymap.set("n", "<A-j>", "<cmd>botright 10split | terminal<CR>", {
    desc = "Open terminal at bottom",
})

-- terminal 模式下按 Esc Esc 回到普通模式
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", {
    desc = "Exit terminal mode",
})
