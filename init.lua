-- ~/.config/nvim/init.lua


require('base.settings')     -- 编辑器设置
require('base.appearance')   -- 外观配置
require('base.keybindings') ---设置快捷键

-- 2) 确保 termguicolors
vim.opt.termguicolors = true

-- 3) bootstrap & 加载 lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.notify("lazy.nvim 未安装，请先按 README 安装： " .. lazypath, vim.log.levels.WARN)
end
vim.opt.rtp:prepend(lazypath)

-- 4) 运行插件系统
require("plugins")  -- 实际跳到 lua/plugins/init.lua
