return {
    "folke/which-key.nvim",
    event = "VeryLazy",
    opts = {
        triggers = {
            { "<auto>", mode = "nxso" },
        },
        plugins = {
            marks = true, -- shows a list of your marks on ' and `
            registers = true, -- shows your registers on " in NORMAL or <C-r> in INSERT mode
            -- the presets plugin, adds help for a bunch of default keybindings in Neovim
            -- No actual key bindings are created
            spelling = {
                enabled = true, -- enabling this will show WhichKey when pressing z= to select spelling suggestions
                suggestions = 20, -- how many suggestions should be shown in the list?
            },
            presets = {
                operators = false, -- adds help for operators like d, y, ...
                motions = false, -- adds help for motions
                text_objects = false, -- help for text objects triggered after entering an operator
                windows = true, -- default bindings on <c-w>
                nav = true, -- misc bindings to work with windows
                z = true, -- bindings for folds, spelling and others prefixed with z
                g = true, -- bindings for prefixed with g
            },
        },
        ---@type wk.Win.opts
        win = {
            no_overlap = true,
            width = 40,
            col = -1,
           -- row = math.huge,
            border = "rounded",
            padding = { 1, 2 }, -- extra window padding [top/bottom, right/left]
            title = true,
            title_pos = "left",
            zindex = 1000,
        },

    },
}
