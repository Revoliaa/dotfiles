local servers = {
    -- "rust_analyzer",
}

require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = servers,
    automatic_installation = true,
})

local lspconfig = require("lspconfig")

local opts = {}

for _, server in pairs(servers) do
    opts = {
	    on_attach = require("revolia.lsp.handlers").on_attach,
		capabilities = require("revolia.lsp.handlers").capabilities,
	}

	server = vim.split(server, "@")[1]

	lspconfig[server].setup(opts)
end
