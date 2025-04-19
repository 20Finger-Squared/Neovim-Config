-- loaded before plugins
vim.g.nofsync = true -- mainly for windows I have no idea what it does
vim.opt.relativenumber = true
vim.opt.termguicolors = true
vim.opt.expandtab = true
vim.opt.spell = true
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.spelllang = "en_gb"

vim.api.nvim_create_autocmd("FileType", {
    pattern = "python",
    callback = function(args)
        local bufnr = args.buf

        -- Set colorcolumn visually
        vim.api.nvim_buf_set_option(bufnr, "colorcolumn", "80")

        -- Highlight past column 80 and store match ID in buffer variable
        local match_id = vim.fn.matchadd("ErrorMsg", [[\%>80v.\+]])
        vim.b[bufnr].python_col_limit_match = match_id

        -- Remove the match when leaving the buffer/window
        vim.api.nvim_create_autocmd("BufWinLeave", {
            buffer = bufnr,
            once = true,  -- ensure it only runs once
            callback = function()
                local id = vim.b[bufnr].python_col_limit_match
                if id then
                    vim.fn.matchdelete(id)
                    vim.b[bufnr].python_col_limit_match = nil
                end
            end
        })
    end
})

-- if you don't think this should be default you're mad
vim.g.mapleader = " "

-- folding settings
vim.opt.foldenable = true
vim.opt.foldmethod = "indent"
vim.opt.foldlevel = 99
vim.opt.foldcolumn = "3"

-- Opens the last closed buffer
vim.api.nvim_create_user_command('Arise', function() print("TODO") end, { nargs = 0 })
