return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  config = function()
    require('lualine').setup({
      options = {
        component_separators = { right = '◢', left = '◣' },
        section_separators = { right = '◢', left = '◣' },
      },
      sections = {
        lualine_a = { 'mode' },
        lualine_b = {
          { 'branch',      separator = '-' },
          { 'diff',        separator = '-' },
          { 'diagnostics', separator = '-' },
          { "filesize" },
        },
        lualine_c = {
          {
            function()
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
          { 'encoding',   separator = '-' },
          { 'fileformat', separator = '-' },
          { 'filetype',   separator = '-' },
        },
        lualine_y = {
          { 'location', separator = '-' },
          { 'progress' },
        },
        lualine_z = {
          "datetime"
        },
      },
    })
  end
}
