local set = vim.keymap.set
local builtin = require("telescope.builtin")
return {
  set("n", "<C-p>", builtin.find_files, {}),                                                        -- requires telescope.builtin
  set("n", "<leader>fg", builtin.live_grep, { desc = "Used to quickly find code" }),                -- requires telescope.builtin
  set("n", "<leader>fo", builtin.oldfiles, { desc = "Used to find the most recently used files" }), -- requires telescope.builtin
}
