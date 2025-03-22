local oil = require("oil")
local actions = require("oil.actions")
local set = vim.keymap.set

-- ai generated function cause idk how to do stuff aside from basic plugin :)
local function is_focused_window_oil_float()
  local win_id = vim.api.nvim_get_current_win()
  local buf_id = vim.api.nvim_win_get_buf(win_id)

  -- Check if the buffer is an Oil buffer
  if vim.bo[buf_id].filetype ~= "oil" then
    return false
  end

  -- Check if the window is a floating window
  local win_config = vim.api.nvim_win_get_config(win_id)
  return win_config.relative ~= ""
end

set("n", "<leader>\\", function()
  if is_focused_window_oil_float() then
    actions.cd.callback("tcd")
  end
end, { desc = "Change to directory in oil" })

set("n", "<leader>v", function()
  if is_focused_window_oil_float() then
    actions.select.callback({ vertical = true })
  end
end, { desc = "Open file in vertical split" })

set("n", "-", function()
  oil.toggle_float()
end, { desc = "Open oil window" })
