-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set

map("i", "jj", "<esc>", { desc = "esc" })
map("n", "J", "5j", { desc = "5j" })
map("n", "K", "5k", { desc = "5k" })

map("v", "J", "5j", { desc = "5j" })
map("v", "K", "5k", { desc = "5k" })

map("n", "H", "^", { desc = "left line" })
map("n", "L", "g_", { desc = "right line" })

map("v", "H", "^", { desc = "left line" })
map("v", "L", "g_", { desc = "right line" })

map("o", "H", "^", { desc = "left line" })
map("o", "L", "g_", { desc = "right line" })
