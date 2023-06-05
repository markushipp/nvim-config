require("mason").setup()
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "gopls"}
})

require("lspconfig").gopls.setup {}
require("lspconfig").lua_ls.setup {}