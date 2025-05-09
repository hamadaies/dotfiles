-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
local map = vim.keymap.set

map("n", "<Tab>", "<cmd>bnext<cr>", { desc = "Next Buffer" })
map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<A-e>", "<cmd>NvimTreeFocus<CR>", { desc = "nvimtree focus window" })
map("t", "<C-x>", "<C-\\><C-N>", { desc = "terminal escape terminal mode" })
map("n", "<A-c>", "gcc", { desc = "Toggle Comment", remap = true })
map("v", "<A-c>", "gc", { desc = "Toggle comment", remap = true })
map("n", "<D-r>", "<cmd>redo<cr>", { desc = "Redo" })
map("n", "<D-s>", ":w<CR>") -- Save
map("v", "<D-c>", '"+y') -- Copy
map("n", "<D-v>", '"+P') -- Paste normal mode
map("v", "<D-v>", '"+P') -- Paste visual mode
map("c", "<D-v>", "<C-R>+") -- Paste command mode
map("i", "<D-v>", '<ESC>l"+Pli') -- Paste insert mode
map("n", "<leader>rr", ":RunCode<CR>", { noremap = true, silent = false })
map("n", "<leader>rf", ":RunFile<CR>", { noremap = true, silent = false })
map("n", "<leader>rft", ":RunFile tab<CR>", { noremap = true, silent = false })
map("n", "<leader>rp", ":RunProject<CR>", { noremap = true, silent = false })
map("n", "<leader>rc", ":RunClose<CR>", { noremap = true, silent = false })
map("n", "<leader>crf", ":CRFiletype<CR>", { noremap = true, silent = false })
map("n", "<leader>crp", ":CRProjects<CR>", { noremap = true, silent = false })
map("n", "<A-w>", function()
  Snacks.bufdelete()
end, { desc = "Delete Buffer" })

vim.api.nvim_set_keymap("n", "<C-R>", "<cmd>CompilerOpen<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap(
  "n",
  "<C-[>",
  "<cmd>CompilerStop<cr>" -- (Optional, to dispose all tasks before redo)
    .. "<cmd>CompilerRedo<cr>",
  { noremap = true, silent = true }
)
vim.api.nvim_set_keymap("n", "<C-]>", "<cmd>CompilerToggleResults<cr>", { noremap = true, silent = true })
