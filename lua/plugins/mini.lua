return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.basics").setup({
            options = {
                extra_ui = true,
                win_borders = "double",
            },
            mappings = {
                windows = true,
                move_with_alt = true,
            },
        })

        require("mini.clue").setup({
            triggers = {
                -- Leader triggers
                { mode = 'n', keys = '<Leader>' },
                { mode = 'x', keys = '<Leader>' },
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
            },
            window = {
                delay = 0, -- Because why be slow?
                config = {
                    border = "rounded",
                    width = "auto",
                },
            },

            width = "auto",
            clues = {
                -- Enhance this by adding descriptions for <Leader> mapping groups
                require("mini.clue").gen_clues.builtin_completion(),
                require("mini.clue").gen_clues.g(),
                require("mini.clue").gen_clues.marks(),
                require("mini.clue").gen_clues.registers(),
                require("mini.clue").gen_clues.windows(),
                require("mini.clue").gen_clues.z(),
            },
        })

        require("mini.statusline").setup({
            use_icons = true,
            set_vim_settings = true,
            content = {
                active = 
                    function()
                        local mode, mode_hl = MiniStatusline.section_mode({ trunc_width = 120 })
                        local git           = MiniStatusline.section_git({ trunc_width = 40 })
                        local diff          = MiniStatusline.section_diff({ trunc_width = 75 })
                        local diagnostics   = MiniStatusline.section_diagnostics({ trunc_width = 75 })
                        local lsp           = MiniStatusline.section_lsp({ trunc_width = 75 })
                        local filename      = MiniStatusline.section_filename({ trunc_width = 140 })
                        local fileinfo      = MiniStatusline.section_fileinfo({ trunc_width = 120 })
                        local location      = MiniStatusline.section_location({ trunc_width = 75 })
                        local search        = MiniStatusline.section_searchcount({ trunc_width = 75 })

                        return MiniStatusline.combine_groups({
                            { hl = mode_hl,                  strings = { mode } },
                            { hl = 'MiniStatuslineDevinfo',  strings = { git, diff, diagnostics, lsp } },
                            '%<', -- Mark general truncate point
                            { hl = 'MiniStatuslineFilename', strings = { filename } },
                            '%=', -- End left alignment
                            { hl = 'MiniStatuslineFileinfo', strings = { fileinfo } },
                            { hl = mode_hl,                  strings = { search, location } },
                        })
                    end,
                inactive = nil, 
            }
        })

        require("mini.comment").setup()    -- used for the absolute greatness of being able to comment quickly
        require("mini.surround").setup()   -- used to surround text
        require("mini.align").setup()      -- better tabular
        require("mini.splitjoin").setup()  -- Good for the gS which separates parameters
        require("mini.cursorword").setup() -- Used to show identical words
        require("mini.ai").setup()         -- better text objects such as vit ( visual in tag )
    end
}
