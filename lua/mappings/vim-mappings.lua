local set = vim.keymap.set
set("n", ";", ":", { desc = "Makes it more easy to enter cmdline" })
set("n", "<leader>wb", ":bdelete<CR>", { desc = "Close current buffer" })

vim.keymap.set("n", "<leader>rp", function()
        if vim.bo.filetype == "python" then
            vim.cmd("belowright split | terminal python3 " .. vim.fn.expand("%"))
        end
        if vim.bo.filetype == "c" then
            vim.cmd("belowright split | terminal gcc " .. vim.fn.expand("%") .. " -o temp && ./temp")
        end
        if vim.bo.filetype == "cpp" then
            vim.cmd("belowright split | terminal g++ " .. vim.fn.expand("%") .. " -o temp && ./temp")
        end
end, { desc = "Runs the current file works with c, cpp, python", silent = true })
