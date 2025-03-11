return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("lualine").setup({
      options = {
        theme = "auto",
        globalstatus = true,
        component_separators = "-",
        section_separators = { left = "", right = "" },
      },
      sections = {
        lualine_a = { "mode" },
        lualine_b = {
          { "branch" },
          { "diff" },
          { "diagnostics" },
          { "filesize" },
        },
        lualine_c = {
          {
            function()
              return "%="
            end,
            separator = "",
          },
          {
            "filename",
            separator = "",
            path = 2,
          },
        },
        lualine_x = {
          { "encoding" },
          { "fileformat" },
          { "filetype" },
        },
        lualine_y = {
          { "location" },
          { "progress" },
        },
        lualine_z = {
          "datetime",
        },
      },
    })
  end,
}
