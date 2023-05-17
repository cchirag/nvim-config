vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<C-s>", ":w<CR>")



-- INSERT MODE BINDINGS

vim.keymap.set("i", "<C-s>", "<Esc>:w<CR>", {})
