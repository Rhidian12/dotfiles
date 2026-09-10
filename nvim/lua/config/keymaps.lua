-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local Util = require("lazyvim.util")
local Telescope = require("telescope.builtin")

vim.keymap.set({ "n", "t" }, "<C-`>", function()
  Snacks.terminal.toggle()
end, { desc = "Open Terminal" })

vim.keymap.set({ "n", "i" }, "<C-k><C-f>", function()
  Util.format({ force = true })
end, { desc = "Format" })

vim.keymap.set("i", "<C-BS>", "<C-w>", { desc = "Delete word backwards" })

vim.keymap.set("n", "<leader>ff", Telescope.live_grep, { desc = "Find in files " })

vim.keymap.set("n", "<leader>bf", function()
  vim.fn.setreg("+", vim.fn.expand("%:."))
end, { desc = "Copy Relative file path of open buffer " })
