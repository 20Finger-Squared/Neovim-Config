return {
    'echasnovski/mini.nvim',
    version = false,
    config = function()

        local basics      = require("mini.basics")
        local align       = require("mini.align")
        local comment     = require("mini.comment")
        local move        = require("mini.move")
        local surround    = require("mini.surround")
        local statusline  = require("mini.statusline")
        local indentscope = require("mini.indentscope")
        local trailspace  = require("mini.trailspace")
        local cursorword  = require("mini.cursorword")
        local clue        = require("mini.clue")
        local ai          = require("mini.ai")

        cursorword.setup()
        move.setup()
        ai.setup()
        basics.setup()
        align.setup()
        comment.setup()
        surround.setup()
        statusline.setup()
        trailspace.setup()

        clue.setup({
            -- Array of extra clues to show
            clues = {},
            triggers = {
                -- Leader triggers
                { mode = 'n', keys = '<Leader>' },
                { mode = 'x', keys = '<Leader>' },

                -- `g` key
                { mode = 'n', keys = 'g' },
                { mode = 'x', keys = 'g' },

                -- Marks
                { mode = 'n', keys = "'" },
                { mode = 'n', keys = '`' },
                { mode = 'x', keys = "'" },
                { mode = 'x', keys = '`' },

                -- Registers
                { mode = 'n', keys = '"' },
                { mode = 'x', keys = '"' },
                { mode = 'i', keys = '<C-r>' },
                { mode = 'c', keys = '<C-r>' },

                -- Window commands
                { mode = 'n', keys = '<C-w>' },

                -- `z` key
                { mode = 'n', keys = 'z' },
                { mode = 'x', keys = 'z' },
            },
            window = {
                -- Floating window config
                config = {},

                -- No delay before showing clue window
                delay = 0,

                -- Keys to scroll inside the clue window
                scroll_down = '<C-d>',
                scroll_up = '<C-u>',
            },
        })

        basics.setup({
            options = { extra_ui = true },
            mappings = {
                windows = true,
                move_with_alt = true,
            },
            autocommands = {
                basic = true,
                relnum_in_visual_mode = true,
            },
        })
        indentscope.setup( {
            symbol = "│",
            draw = { delay = 50 }
        })

    end
}
