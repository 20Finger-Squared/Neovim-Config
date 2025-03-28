return {
  'jinh0/eyeliner.nvim',
  config = function()
    require('eyeliner').setup {
      max_length = 9999,

      -- add eyeliner to f/F/t/T keymaps;
      -- see section on advanced configuration for more information
      default_keymaps = true,
    }
    vim.api.nvim_set_hl(0, 'EyelinerSecondary', { bold = true, underline = true })
    vim.api.nvim_set_hl(0, 'EyelinerPrimary', { fg='#fe8019',bold = true, underline = true})
  end
}
