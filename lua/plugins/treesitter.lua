-- nvim/lua/plugins/treesitter.lua
return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  event = { 'BufReadPost', 'BufNewFile' },
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',  -- 可选：文本对象支持
  },
  config = function()
    require('nvim-treesitter.configs').setup({
      -- 自动安装的语言解析器
      ensure_installed = {
        -- Web 开发
        'html',
        'css',
        'javascript',
        'typescript',
        'tsx',
        'vue',
        'json',
        
        -- 后端开发
        'java',
        'python',
        'go',
        'rust',
        'c',
        'cpp',
        
        -- 配置文件
        'lua',
        'vim',
        'yaml',
        'toml',
        'xml',
        
        -- 脚本和标记语言
        'bash',
        'markdown',
        'markdown_inline',
        
        -- 数据库
        'sql',
        
        -- 其他
        'dockerfile',
        'gitignore',
        'regex',
        'comment',
      },
      
      -- 同步安装（Neovim 启动时）
      sync_install = false,
      
      -- 自动安装缺失的解析器
      auto_install = true,
      
      -- 高亮配置
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      
      -- 增量选择
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<CR>',
          node_incremental = '<CR>',
          node_decremental = '<BS>',
          scope_incremental = '<TAB>',
        },
      },
      
      -- 缩进
      indent = {
        enable = true,
        disable = { 'python' },  -- Python 用其他插件处理缩进更好
      },
      
      -- 文本对象（需要安装 nvim-treesitter-textobjects）
      textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ['af'] = '@function.outer',
            ['if'] = '@function.inner',
            ['ac'] = '@class.outer',
            ['ic'] = '@class.inner',
          },
        },
      },
    })
  end,
}
