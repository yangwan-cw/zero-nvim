-- ~/.config/nvim/lua/base/mappings.lua
-- 键位映射配置

local map = vim.api.nvim_set_keymap
local opt = { noremap = true, silent = true }

-- ============================================
-- Leader 键设置
-- ============================================
vim.g.mapleader = " "              -- 设置 leader 键为空格
vim.g.maplocalleader = " "         -- 设置 local leader 键为空格

-- ============================================
-- 取消默认功能
-- ============================================
map("n", "s", "", opt)             -- 取消 s 键的默认功能（方便后续自定义）
map("n", "S", "", opt)             -- 取消 S 键的默认功能

-- ============================================
-- 窗口分屏快捷键
-- ============================================
-- 分屏操作
map("n", "sv", ":vsp<CR>", opt)    -- 垂直分屏（左右分屏）
map("n", "sh", ":sp<CR>", opt)     -- 水平分屏（上下分屏）

-- 关闭当前窗口
map("n", "sc", "<C-w>c", opt)      -- 关闭当前窗口
map("n", "so", "<C-w>o", opt)      -- 关闭其他窗口（只保留当前）

-- ============================================
-- Alt + hjkl 窗口之间跳转
-- ============================================
map("n", "<A-h>", "<C-w>h", opt)   -- 跳转到左侧窗口
map("n", "<A-j>", "<C-w>j", opt)   -- 跳转到下方窗口
map("n", "<A-k>", "<C-w>k", opt)   -- 跳转到上方窗口
map("n", "<A-l>", "<C-w>l", opt)   -- 跳转到右侧窗口

-- ============================================
-- 窗口大小调整
-- ============================================
-- 左右比例调整
map("n", "<C-Left>", ":vertical resize -2<CR>", opt)   -- 向左缩小
map("n", "<C-Right>", ":vertical resize +2<CR>", opt)  -- 向右放大
map("n", "s,", ":vertical resize -20<CR>", opt)        -- 快速向左缩小
map("n", "s.", ":vertical resize +20<CR>", opt)        -- 快速向右放大

-- 上下比例调整
map("n", "sj", ":resize +10<CR>", opt)                 -- 向下放大
map("n", "sk", ":resize -10<CR>", opt)                 -- 向上缩小
map("n", "<C-Down>", ":resize +2<CR>", opt)            -- 向下微调
map("n", "<C-Up>", ":resize -2<CR>", opt)              -- 向上微调

-- 等比例调整
map("n", "s=", "<C-w>=", opt)      -- 所有窗口等宽等高

-- ============================================
-- Terminal 相关快捷键
-- ============================================
-- 打开终端
map("n", "<leader>t", ":sp | terminal<CR>", opt)       -- 水平分屏打开终端
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)     -- 垂直分屏打开终端

-- Terminal 模式下退出到 Normal 模式
map("t", "<Esc>", "<C-\\><C-n>", opt)                  -- Esc 退出终端模式

-- Terminal 模式下窗口跳转
map("t", "<A-h>", [[ [<C-\><C-N><C-w>h] ]], opt)       -- 跳转到左侧窗口
map("t", "<A-j>", [[ [<C-\><C-N><C-w>j] ]], opt)       -- 跳转到下方窗口
map("t", "<A-k>", [[ [<C-\><C-N><C-w>k] ]], opt)       -- 跳转到上方窗口
map("t", "<A-l>", [[ [<C-\><C-N><C-w>l] ]], opt)       -- 跳转到右侧窗口

-- ============================================
-- Visual 模式下缩进代码
-- ============================================
map("v", "<", "<gv", opt)          -- 向左缩进后保持选中状态
map("v", ">", ">gv", opt)          -- 向右缩进后保持选中状态

-- ============================================
-- Visual 模式上下移动选中文本
-- ============================================
map("v", "J", ":move '>+1<CR>gv-gv", opt)              -- 向下移动选中行
map("v", "K", ":move '<-2<CR>gv-gv", opt)              -- 向上移动选中行

-- ============================================
-- 上下滚动浏览
-- ============================================
-- Ctrl + u/d 滚动时保持光标在屏幕中央
map("n", "<C-j>", "4j", opt)       -- 向下滚动 4 行
map("n", "<C-k>", "4k", opt)       -- 向上滚动 4 行

-- Ctrl + u/d 翻页时光标居中，默认移动半屏
map("n", "<C-u>", "9k", opt)       -- 向上翻页
map("n", "<C-d>", "9j", opt)       -- 向下翻页

-- ============================================
-- Visual 模式粘贴不要复制
-- ============================================
-- 粘贴时不覆盖寄存器内容
map("v", "p", '"_dP', opt)         -- 粘贴但不复制被替换的文本

-- ============================================
-- 退出
-- ============================================
map("n", "q", ":q<CR>", opt)       -- 快速退出
map("n", "qq", ":q!<CR>", opt)     -- 强制退出（不保存）
map("n", "Q", ":qa!<CR>", opt)     -- 退出所有窗口（不保存）

-- ============================================
-- Insert 模式快捷键
-- ============================================
-- Insert 模式下跳到行首和行尾
map("i", "<C-h>", "<ESC>I", opt)   -- 跳到行首并进入插入模式
map("i", "<C-l>", "<ESC>A", opt)   -- 跳到行尾并进入插入模式

-- ============================================
-- 基础编辑快捷键
-- ============================================
-- 保存文件
map("n", "<leader>w", ":w<CR>", opt)                   -- 保存当前文件
map("n", "<leader>W", ":wa<CR>", opt)                  -- 保存所有文件

-- 保存并退出
map("n", "<leader>x", ":x<CR>", opt)                   -- 保存并退出

-- 全选
map("n", "<C-a>", "ggVG", opt)     -- Ctrl+a 全选

-- 取消搜索高亮
map("n", "<leader>/", ":nohlsearch<CR>", opt)          -- 取消搜索高亮

-- ============================================
-- 快速移动
-- ============================================
-- 行首行尾快速跳转
map("n", "H", "^", opt)            -- H 跳转到行首（非空白字符）
map("n", "L", "$", opt)            -- L 跳转到行尾

-- ============================================
-- 缓冲区（Buffer）切换
-- ============================================
map("n", "<C-h>", ":bprevious<CR>", opt)               -- 切换到上一个 buffer
map("n", "<C-l>", ":bnext<CR>", opt)                   -- 切换到下一个 buffer
map("n", "<leader>bd", ":bdelete<CR>", opt)            -- 删除当前 buffer

-- ============================================
-- 文本对象增强
-- ============================================
-- 删除到行尾
map("n", "D", "d$", opt)           -- D 删除到行尾

-- 复制到行尾
map("n", "Y", "y$", opt)           -- Y 复制到行尾

-- ============================================
-- 搜索增强
-- ============================================
-- 搜索时保持在中间
map("n", "n", "nzzzv", opt)        -- 下一个搜索结果并居中
map("n", "N", "Nzzzv", opt)        -- 上一个搜索结果并居中

-- ============================================
-- 命令行模式快捷键
-- ============================================
-- Ctrl + a 跳到命令行开头
map("c", "<C-a>", "<Home>", { noremap = true })
-- Ctrl + e 跳到命令行结尾
map("c", "<C-e>", "<End>", { noremap = true })

-- ============================================
-- 禁用一些不常用的按键
-- ============================================
map("n", "Q", "<Nop>", opt)        -- 禁用 Ex 模式
map("n", "q:", "<Nop>", opt)       -- 禁用命令行历史窗口

-- ============================================
-- 快速编辑配置文件
-- ============================================
-- 快速打开配置文件
map("n", "<leader>rc", ":edit ~/.config/nvim/init.lua<CR>", opt)

-- 重新加载配置
map("n", "<leader>rr", ":source ~/.config/nvim/init.lua<CR>", opt)


-- 标签页导航
vim.keymap.set('n', '<Tab>', ':BufferLineCycleNext<CR>', { silent = true, desc = '下一个标签' })
vim.keymap.set('n', '<S-Tab>', ':BufferLineCyclePrev<CR>', { silent = true, desc = '上一个标签' })

-- 关闭标签
-- vim.keymap.set('n', '<leader>bc', ':BufferLinePickClose<CR>', { silent = true, desc = '选择关闭标签' })
vim.keymap.set('n', '<leader>bx', ':bdelete<CR>', { silent = true, desc = '关闭当前标签' })
vim.keymap.set('n', '<C-q>', ':bdelete<CR>', { silent = true })              -- Ctrl+q: 关闭当前
-- 跳转到指定标签（数字）
for i = 1, 9 do
  vim.keymap.set('n', '<leader>' .. i, ':BufferLineGoToBuffer ' .. i .. '<CR>', 
    { silent = true, desc = '跳转到标签' .. i })
end


-- ============ Telescope 快捷键 ============

-- 文件查找
vim.keymap.set('n', '<leader>ff', ':Telescope find_files<CR>', { silent = true, desc = '查找文件' })
vim.keymap.set('n', '<leader>fg', ':Telescope live_grep<CR>', { silent = true, desc = '全局搜索' })
vim.keymap.set('n', '<leader>fb', ':Telescope buffers<CR>', { silent = true, desc = '查找缓冲区' })
vim.keymap.set('n', '<leader>fh', ':Telescope help_tags<CR>', { silent = true, desc = '查找帮助' })
vim.keymap.set('n', '<leader>fo', ':Telescope oldfiles<CR>', { silent = true, desc = '最近文件' })

-- Git 相关
vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<CR>', { silent = true, desc = 'Git提交' })
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>', { silent = true, desc = 'Git状态' })

-- 其他
vim.keymap.set('n', '<leader>fw', ':Telescope grep_string<CR>', { silent = true, desc = '搜索当前单词' })
vim.keymap.set('n', '<leader>fr', ':Telescope resume<CR>', { silent = true, desc = '恢复上次搜索' })


-- ============ Dashboard 快捷键 ============
vim.keymap.set('n', '<leader>h', ':Dashboard<CR>', { silent = true, desc = '打开主页' })
-- ============================================
-- 注释：需要 Comment.nvim 插件支持
-- ============================================
-- gcc - 注释/取消注释当前行
-- gc{motion} - 注释/取消注释指定范围
-- 这些快捷键由 Comment.nvim 插件提供

-- ============================================
-- 说明：
-- ============================================
-- map() 函数参数说明：
-- 第一个参数：模式
--   "n" = Normal 模式
--   "i" = Insert 模式
--   "v" = Visual 模式
--   "t" = Terminal 模式
--   "c" = Command 模式
--
-- 第二个参数：按键组合
-- 第三个参数：执行的命令
-- 第四个参数：选项
--   noremap = true  : 不递归映射
--   silent = true   : 执行时不显示消息
