return {
    'nvim-lualine/lualine.nvim',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('lualine').setup({
        options = {         
        component_separators = {right = '◢', left = '◣'},
        section_separators = {right = '◢', left = '◣'},
        icons_enabled = true,
        theme = 'catppuccin',
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
        refresh = {
          statusline = 100,
          tabline = 100,
          winbar = 100,
        }
      },
      sections = {
        lualine_a = {'mode'},
        lualine_b = {
          {'branch', separator = ''},
          {'diff', separator = ''} ,
          {'diagnostics', separator = ''},
          {"filesize"},
        },
        lualine_c = { 
          {function()
            return "%="
          end,
          separator = ''
          },
          {          
            'filename',
            separator = '',
            path = 1,
          },
        },
      lualine_x = {
        {'encoding', separator = '-'},
        {'fileformat', separator = '-'},
        {'filetype', separator = '-'},
      },
        lualine_y = {'progress'},
        lualine_z = {'datetime'},
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {}
      })
    end
}
