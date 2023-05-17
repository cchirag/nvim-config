local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(_, bufnr)
  lsp.default_keymaps({buffer = bufnr})
end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
lsp.setup_servers({'tsserver', 'eslint', 'clangd', 'cssls', 'dockerls', 'docker_compose_language_service', 'emmet_ls', 'golangci_lint_ls', 'graphql', 'html', 'jsonls', 'java_language_server', 'lua_ls', 'marksman', 'pylyzer'})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())
lsp.setup()
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

cmp.setup({
  mapping = {
    -- `Enter` key to confirm completion
    ['<CR>'] = cmp.mapping.confirm({select = false}),

    -- Ctrl+Space to trigger completion menu
    ['<C-Space>'] = cmp.mapping.complete(),

    -- Navigate between snippet placeholder
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  }
})
