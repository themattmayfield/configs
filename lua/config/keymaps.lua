-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps her
--

-- Easy escape from insert mode
vim.keymap.set("i", "jk", "<Esc>", { desc = "Exit insert mode with jk" })

-- Create a new line without entering insert mode
vim.keymap.set("n", "<leader>o", "o<Esc>", { desc = "New line below (stay in normal mode)" })
vim.keymap.set("n", "<leader>O", "O<Esc>", { desc = "New line above (stay in normal mode)" })
