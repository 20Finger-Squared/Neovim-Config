local map = vim.keymap.set

-- 󰁍󰁔󰁖󰁝 Move to windows
map({ 'n', 'i' }, '<C-h>', '<C-w>h', { desc = "󰁍 Move to left window" })
map({ 'n', 'i' }, '<C-j>', '<C-w>j', { desc = "󰁔 Move to bottom window" })
map({ 'n', 'i' }, '<C-k>', '<C-w>k', { desc = "󰁝 Move to top window" })
map({ 'n', 'i' }, '<C-l>', '<C-w>l', { desc = "󰁖 Move to right window" })

-- 󰩨 Resize windows
map({ 'n', 'i' }, '<M-C-H>', '<cmd>vertical resize -1<CR>', { silent = true, desc = "󰍟 Decrease width" })
map({ 'n', 'i' }, '<M-C-L>', '<cmd>vertical resize +1<CR>', { silent = true, desc = "󰍠 Increase width" })
map({ 'n', 'i' }, '<M-N-L>', '<cmd>resize -1<CR>', { silent = true, desc = "󰍡 Decrease height" })
map({ 'n', 'i' }, '<M-C-K>', '<cmd>resize +1<CR>', { silent = true, desc = "󰍡 Increase height" })
local builtin = require("telescope.builtin")


-- 󰉋 File operations
map("n", "<leader>ow", MiniFiles.open, { desc = "󰉋 Open file explorer" })

-- 󰍉 Telescope fuzzy finding
map("n", "<leader>fb", builtin.buffers, { desc = "󰸕 Find buffers" })
map("n", "<leader>fc", builtin.command_history, { desc = "󰆊 Command history" })
map("n", "<leader>fd", builtin.diagnostics, { desc = "󰔧 Find diagnostics" })
map("n", "<leader>ff", builtin.find_files, { desc = "󰈔 Find files" })
map("n", "<leader>fg", builtin.live_grep, { desc = "󰱼 Live grep" })
map("n", "<leader>fh", builtin.help_tags, { desc = "󰋖 Help tags" })
map("n", "<leader>fm", builtin.keymaps, { desc = "󰌌 Find keymaps" })
map("n", "<leader>fo", builtin.oldfiles, { desc = "󰋚 Recent files" })
map("n", "<C-s>", builtin.spell_suggest, { desc = "󰓆 Spell suggestions" })

-- Disable arrow keys
map({ 'n', 'i', 'v' }, '<Up>', '<Nop>', { desc = " Arrow keys disabled" })
map({ 'n', 'i', 'v' }, '<Down>', '<Nop>', { desc = " Arrow keys disabled" })
map({ 'n', 'i', 'v' }, '<Left>', '<Nop>', { desc = " Arrow keys disabled" })
map({ 'n', 'i', 'v' }, '<Right>', '<Nop>', { desc = " Arrow keys disabled" })

-- 󰜺 Move lines and code blocks
map("v", "<M-k>", ":m '<-2<CR>gv=gv", { desc = "󰜷 Move selection up" })
map("v", "<M-j>", ":m '>+1<CR>gv=gv", { desc = "󰜮 Move selection down" })
map("n", "<M-k>", ":m .-2<CR>==", { desc = "󰜷 Move line up" })
map("n", "<M-j>", ":m .+1<CR>==", { desc = "󰜮 Move line down" })

-- Terminal
map({ "n", "t" }, "<leader>t", ":Floaterminal<CR>", { desc = " Toggle floating terminal" })
map("t", "<ESC><ESC>", "<C-\\><C-n>", { desc = " Exit terminal mode" })
