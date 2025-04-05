return {
  "norcalli/nvim-colorizer.lua",
  config = function()
    require("colorizer").setup({
      '*',
      DEFUALT_CONFIG = {
        names = false,
        mode  = 'foreground',
      },
      css = {
        css    = true,
        mode   = 'foreground',
        css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn
      },
    })
  end,
}
