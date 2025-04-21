-- List of default LSP
local lang_servers = {
  'bashls',
  'clangd',
  'jdtls',
  'jsonls',
  'lua_ls',
  'grammarly',
  'jedi_language_server',
  'yamlls'
}

-- Require mason setup to check LSPs
require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = lang_servers
})

-- LSP Global Configuration
vim.lsp.config('*', {
  capabilities = {
    textDocument = {
      semanticTokens = {
        multilineTokenSupport = true,
      }
    }
  },
  root_markers = { '.git' },
})

-- Load LSPs
vim.lsp.enable('luals')
vim.lsp.enable('clangd')
