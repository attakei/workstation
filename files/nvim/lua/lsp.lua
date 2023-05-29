require("mason").setup()

local lspconfig = require('lspconfig')
lspconfig.ruff_lsp.setup {}
