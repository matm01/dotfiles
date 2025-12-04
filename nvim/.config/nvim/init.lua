-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
require('vscode').load('dark')
require("mason").setup()
require("mason-lspconfig").setup()