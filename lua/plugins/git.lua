return {
    { -- gitsigns
        "lewis6991/gitsigns.nvim",
        config = function()
            gitsigns = require("gitsigns")
            gitsigns.setup({
                -- git blame opts
                current_line_blame = true,
                current_line_blame_opts = {
                    virt_text = false,
                    virt_text_pos = 'eol', -- 'eol' | 'overlay' | 'right_align'
                    delay = 0,
                    ignore_whitespace = false,
                    virt_text_priority = 100,
                    use_focus = true,
                },
            })
        end
    }
}
