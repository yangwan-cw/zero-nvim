return {
  -- 图标依赖（可选，但强烈推荐）
  { "nvim-tree/nvim-web-devicons", lazy = true },

  -- 文件树
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    event = "VeryLazy",   -- 启动后再加载，避免拖慢启动
    dependencies = { "nvim-tree/nvim-web-devicons" },
    keys = {
        { "<A-m>", "<cmd>NvimTreeToggle<cr>", desc = "Toggle File Explorer" },
    },
    opts = {
      -- 与 netrw 相关（我们在 lazy 的 performance 里已禁用 netrwPlugin；这里再保险）
      disable_netrw = true,
      hijack_netrw = true,
      
      -- 打开/同步行为
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      update_focused_file = { enable = true, update_root = true },

      -- 视图
      view = { width = 32, side = "left", preserve_window_proportions = true },

      -- 渲染
      renderer = {
        root_folder_label = false,
        highlight_git = true,
        indent_markers = { enable = true },
        icons = { show = { file = true, folder = true, folder_arrow = true, git = true } },
      },

      -- 过滤
      filters = { dotfiles = false, custom = { "^.git$" } },

      -- Git 状态与忽略
      git = { enable = true, ignore = false },

      -- 行为
      actions = { open_file = { quit_on_open = false, resize_window = true } },
    },
  },
}

