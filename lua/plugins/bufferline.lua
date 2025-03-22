return {
  "akinsho/bufferline.nvim",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    require("bufferline").setup({
      options = {
        themable = true,
        diagnostics = "nvim_lsp",
        show_close_icon = false,
        separator_style = "padded_slant",
        buffer_padding = 0,
        show_buffer_numbers = true,
      },
      custom_areas = {
        right = function()
          local result = {}
          local seve = vim.diagnostic.severity
          local error = vim.diagnostic.get(0, { severity = seve.ERROR })
          local warning = vim.diagnostic.get(0, { severity = seve.WARN })
          local info = vim.diagnostic.get(0, { severity = seve.INFO })
          local hint = vim.diagnostic.get(0, { severity = seve.HINT })

          if error ~= 0 then
            table.insert(result, { text = "  " .. error, link = "DiagnosticError" })
          end

          if warning ~= 0 then
            table.insert(result, { text = "  " .. warning, link = "DiagnosticWarn" })
          end

          if hint ~= 0 then
            table.insert(result, { text = "  " .. hint, link = "DiagnosticHint" })
          end

          if info ~= 0 then
            table.insert(result, { text = "  " .. info, link = "DiagnosticInfo" })
          end
          return result
        end,
      }
    })
  end,
}
