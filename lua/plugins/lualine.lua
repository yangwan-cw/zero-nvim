return {
  'nvim-lualine/lualine.nvim',
  lazy = false,
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        theme = 'auto',
        component_separators = { left = '', right = '' },
        section_separators = { left = '', right = '' },
        globalstatus = true,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = {
          {
            'mode',
            fmt = function(str)
              return str
            end
          }
        },
        lualine_b = {
          {
            'branch',
            icon = '  ',
            -- 或者使用: icon = '',
            color = { fg = '#89b4fa', gui = 'bold' },
          },
          {
            'diff',
            symbols = { added = '+', modified = '~', removed = '-' },
            -- 或使用 Nerd Font: symbols = { added = ' ', modified = ' ', removed = ' ' },
          }
        },
        lualine_c = {
          {
            'filename',
            path = 2,  -- 0: 只文件名, 1: 相对路径, 2: 绝对路径
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
            sources = { 'nvim_lsp', 'nvim_diagnostic' },
            symbols = { error = 'E:', warn = 'W:', info = 'I:', hint = 'H:' },
            -- 或使用图标: symbols = { error = ' ', warn = ' ', info = ' ', hint = ' ' },
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
