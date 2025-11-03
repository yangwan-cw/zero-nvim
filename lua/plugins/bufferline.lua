-- nvim/lua/plugins/bufferline.lua
return {
  'akinsho/bufferline.nvim',
  version = "*",
  lazy=false,
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require("bufferline").setup({
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "NvimTree",
            text = "文件资源管理器",
            highlight = "Directory",
            text_align = "left"
          }
        },
        numbers = "ordinal",
        separator_style = "slant",
        close_command = "bdelete! %d",
        right_mouse_command = "bdelete! %d",
        left_mouse_command = "buffer %d",
        show_buffer_close_icons = true,
        show_close_icon = true,
        show_buffer_icons = true,
        always_show_bufferline = true,  -- 重要：总是显示
      }
    })
  end,
}
