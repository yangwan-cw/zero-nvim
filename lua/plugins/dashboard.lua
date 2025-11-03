-- nvim/lua/plugins/dashboard.lua
return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    local db = require('dashboard')
    
    db.setup({
      theme = 'doom',
      config = {
        header = {
          '',
          '',
          ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
          ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
          ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
          ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
          ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
          ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
          '',
          '',
        },
        center = {
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[f] 查找文件',
            desc_hl = 'String',
            key = 'f',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope find_files'
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[r] 最近文件',
            desc_hl = 'String',
            key = 'r',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope oldfiles'
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[g] 全局搜索',
            desc_hl = 'String',
            key = 'g',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Telescope live_grep'
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[c] 配置文件',
            desc_hl = 'String',
            key = 'c',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'edit ~/.config/nvim/init.lua'
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[p] 插件管理',
            desc_hl = 'String',
            key = 'p',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'Lazy'
          },
          {
            icon = '  ',
            icon_hl = 'Title',
            desc = '[q] 退出',
            desc_hl = 'String',
            key = 'q',
            key_hl = 'Number',
            key_format = ' %s',
            action = 'qa'
          },
        },
        footer = function()
          local stats = require('lazy').stats()
          local ms = (math.floor(stats.startuptime * 100 + 0.5) / 100)
          return { 
            '',
            '⚡ Neovim 启动耗时 ' .. ms .. ' ms',
            '🚀 加载了 ' .. stats.loaded .. '/' .. stats.count .. ' 个插件',
                        '💡 提示: 在启动页直接按快捷键字母即可快速操作',
          }
        end,
      },
    })
  end,
}
