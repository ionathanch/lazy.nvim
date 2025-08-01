-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map({ "i", "x", "n", "s" }, "<S-ScrollWheelUp>", "<ScrollWheelLeft>", { desc = "Scroll leftwards" })
map({ "i", "x", "n", "s" }, "<S-ScrollWheelDown>", "<ScrollWheelRight>", { desc = "Scroll rightwards" })

map("n", "M", function()
  local _, winId = vim.diagnostic.open_float(nil, { scope = "line" })
  vim.api.nvim_win_set_config(winId or 0, { focusable = true })
end, { desc = "Open diagnostics for error under cursor" })

map("n", "<C-Left>", ":BufferLineMovePrev<CR>", { silent = true, desc = "Move tab left" })
map("n", "<C-Right>", ":BufferLineMoveNext<CR>", { silent = true, desc = "Move tab right" })

map("n", "<C-S-f>", ":GrugFar<CR>", { silent = true, desc = "Find and replace" })
