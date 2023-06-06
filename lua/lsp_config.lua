require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "gopls", "powershell_es"}
})

require("lspconfig").gopls.setup {}
require("lspconfig").lua_ls.setup {}
require("lspconfig").powershell_es.setup {}

