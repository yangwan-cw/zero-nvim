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


vim.api.nvim_create_autocmd("QuitPre", {
  callback = function()
    local tree_wins = {}
    local floating_wins = {}
    local wins = vim.api.nvim_list_wins()
    for _, w in ipairs(wins) do
      local bufname = vim.api.nvim_buf_get_name(vim.api.nvim_win_get_buf(w))
      if bufname:match("NvimTree_") ~= nil then
        table.insert(tree_wins, w)
      end
      if vim.api.nvim_win_get_config(w).relative ~= '' then
        table.insert(floating_wins, w)
      end
    end
    if #wins - #floating_wins - #tree_wins == 1 then
      vim.cmd "qall"
    end
  end
})

