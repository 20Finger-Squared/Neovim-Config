-- requirements for the mappings so don't touch these. Please? :3
local builtin = require("telescope.builtin") 
local lspconfig = require("lspconfig")
local set = vim.keymap.set


-- vim

set("n", ";", ":")
set("n", "<C-h>", "<C-w>h", { desc = "Move to left window" })
set("n", "<C-j>", "<C-w>j", { desc = "Move to lower window" })
set("n", "<C-k>", "<C-w>k", { desc = "Move to upper window" })
set("n", "<C-l>", "<C-w>l", { desc = "Move to right window" })
set("n", "<C-n>", ":Neotree toggle left<CR>", {})
set("n", "<leader>nb", ":Neotree buffers reveal float<CR>", {})

-- telescope.builtin

set("n", "<C-p>", builtin.find_files, {}) -- requires telescope.builtin
set("n", "<leader>fg", builtin.live_grep, {desc = "Used to quickly find code"}) -- requires telescope.builtin
set("n", "<leader>fo", builtin.oldfiles, {desc = "Used to find the most recently used files"}) -- requires telescope.builtin

-- mason.lspconfig

set("n", "gd", vim.lsp.buf.definition, {}) -- requires mason.lspconfig
set("n", "K", vim.lsp.buf.hover, {}) -- requires mason.lspconfig
set("n", "<leader>ca", vim.lsp.buf.code_action, {}) -- requires mason.lspconfig
