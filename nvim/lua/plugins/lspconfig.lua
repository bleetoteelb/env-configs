require("nvim-lsp-installer").setup({
    ensure_installed = { "yamlls", "jsonls", "eslintls" }
})

require'lspconfig'.eslint.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.jsonls.setup{}


