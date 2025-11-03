-- nvim/lua/plugins/lualine.lua
return {
  'nvim-lualine/lualine.nvim',
  lazy=false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto',
        -- 简洁分隔符
        component_separators = { left = '', right = ''},
        section_separators = { left = '', right = ''},
        globalstatus = true,
        refresh = {
          statusline = 1000,
        }
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str:sub(1, 1)  -- 只显示首字母 (N, I, V, C)
            end
          }
        },
        lualine_b = {
          {
            'branch',
            icon = '',
            color = { gui = 'bold' }
          }
        },
        lualine_c = {
          {
            'filename',
            path = 0,  -- 只显示文件名
            symbols = {
              modified = '[+]',
              readonly = '[-]',
              unnamed = '[No Name]',
            }
          }
        },
        lualine_x = {
          {
            'diagnostics',
            sources = { 'nvim_diagnostic' },
            symbols = { error = 'E:', warn = 'W:', info = 'I:', hint = 'H:' },
          },
          'encoding',
          {
            'fileformat',
            symbols = {
              unix = 'LF',
              dos = 'CRLF',
              mac = 'CR',
            }
          },
          'filetype',
        },
        lualine_y = {
          {
            'progress',
            separator = '',
            padding = { left = 1, right = 0 }
          }
        },
        lualine_z = {
          {
            'location',
            padding = { left = 0, right = 1 }
          }
        }
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {},
        lualine_z = {}
      },
      extensions = { 'nvim-tree', 'lazy' }
    })
  end,
}
