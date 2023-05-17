-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1
vim.wo.relativenumber = true
-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
    sort_by = "case_sensitive",
    view = {
      width = 30,
      relativenumber = true,
    },
    renderer = {
      group_empty = true,
    },
    filters = {
      dotfiles = false,
    },
  })
local api = require("nvim-tree.api")
vim.keymap.set("n", "<leader>e", api.tree.toggle, {})
vim.keymap.set("n", "<leader>ef", api.tree.focus, {})
