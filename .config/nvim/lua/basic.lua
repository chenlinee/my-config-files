-- utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"
-- jkhl 移动时光标周围保留4行
vim.o.scrolloff = 4
vim.o.sidescrolloff = 4
-- 右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80,120"
-- 缩进4个空格等于一个Tab
vim.bo.tabstop = 4
vim.bo.shiftwidth = 4
vim.bo.softtabstop = 4
vim.bo.expandtab = true
-- 高亮所在行列
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 鼠标支持
vim.o.mouse = "a"
-- split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 显示行号
vim.wo.number = true
-- 搜索
vim.o.ignorecase = true
vim.o.smartcase = true
-- 括号
vim.o.showmatch = true
vim.o.matchtime = 1 -- 0.1ms
-- 当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 显示不可见字符
vim.o.list = true
vim.o.listchars = "space: ,tab:>·,trail:■,extends:>,precedes:<"

