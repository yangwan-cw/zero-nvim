-- 统一在这里调用 lazy.setup，并把同目录下的模块“导入”
require("lazy").setup({
  spec = {
    { import = "plugins.colorscheme" },
    { import = "plugins.treesitter" },
    { import = "plugins.fileTree" },
    { import = "plugins.bufferline" },
    { import = "plugins.lualine" },
    { import = "plugins.telescope" },
    { import = "plugins.dashboard" },
  },
  defaults = { lazy = true },     -- 默认懒加载（个别需要立即加载的在各自文件里覆盖）
  install = { colorscheme = { "tokyonight", "catppuccin" } },
  checker = { enabled = true },   -- 后台检查更新（可在 :Lazy 里关闭）
  performance = { rtp = { disabled_plugins = { "gzip", "tarPlugin", "zipPlugin", "netrwPlugin" } } },
})

