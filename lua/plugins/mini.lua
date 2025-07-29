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
        local ai          = require("mini.ai")

        cursorword.setup()
        move.setup()
        ai.setup()
        align.setup()
        comment.setup()
        surround.setup()
        statusline.setup()
        trailspace.setup()

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
            symbol = "·",
            draw = { delay = 150 }
        })
    end
}
