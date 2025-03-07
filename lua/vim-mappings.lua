-- requirements for the mappings so don't touch these
local builtin = require("telescope.builtin")


local set = vim.keymap.set

-- normal mode shortcuts
set("n", ";", ":")
-- normal Ctrl shortcuts
set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
set("n", "<C-p>", builtin.find_files, {}) -- requires the telescope.builtin
set("n", "<C-n>", ":Neotree toggle left<CR>", {})
-- normal leader shortcuts
set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {})
set("n", "<leader>fg", builtin.live_grep, {}) -- requires the telescope.builtin
set("n", "<leader>fo", builtin.oldfiles, {}) -- requires the telescope.builtin
