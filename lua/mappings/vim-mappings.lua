local set = vim.keymap.set

set("n", ";", ":", { desc = "Easier access to command-line mode" })
set("n", "<leader>wb", ":bdelete<CR>", { desc = "Close current buffer" })

set("n", "<leader>rp", function()
    vim.cmd("write") -- Save file before running
    local filename = vim.fn.expand("%")
    local ft = vim.bo.filetype

    if ft == "python" then
        vim.cmd("belowright split | terminal python3 " .. filename)
    elseif ft == "c" then
        vim.cmd("belowright split | terminal gcc " .. filename .. " -o temp && ./temp")
    elseif ft == "cpp" then
        vim.cmd("belowright split | terminal g++ " .. filename .. " -o temp && ./temp")
    elseif ft == "rust" then
        vim.cmd("belowright split | terminal cargo run")
    else
        vim.notify("Unsupported filetype: " .. ft, vim.log.levels.WARN)
    end
end, {
    desc = "Run current file (Python, C, C++, Rust)",
    silent = true,
})
