return {
  "stevearc/oil.nvim",
  ---@module 'oil'
  ---@type oil.SetupOpts
  dependencies = { "nvim-tree/nvim-web-devicons" },
  lazy = false,
  config = function()
    require("oil").setup({
      default_file_explorer = true,
      skip_confirm_for_simple_edits = true,
      use_default_keymaps = false,

      view_options = { show_hidden = true },
      columns = {
        "icon",
        "size",
      },
      keymaps = {
        ["<CR>"] = "actions.select",
        ["<C-p>"] = "actions.preview",
        ["<C-l>"] = "actions.refresh",
        ["gx"] = "actions.open_external",
        ["g?"] = { "actions.show_help", mode = "n" },
        ["<leader>v"] = { "actions.select", opts = { vertical = true } },
        ["<C-h>"] = { "actions.select", opts = { horizontal = true } },
        ["<C-t>"] = { "actions.select", opts = { tab = true } },
        ["<C-c>"] = { "actions.close", mode = "n" },
        ["-"] = { "actions.parent", mode = "n" },
        ["_"] = { "actions.open_cwd", mode = "n" },
        ["`"] = { "actions.cd", mode = "n" },
        ["gs"] = { "actions.change_sort", mode = "n" },
        ["g."] = { "actions.toggle_hidden", mode = "n" },
        ["g\\"] = { "actions.toggle_trash", mode = "n" },
      },
    })
  end,
}

