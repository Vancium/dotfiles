local M = {}

M.lua_ls = function()
	require("lspconfig").lua_ls.setup({
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
		settings = require("plugins.lsp.servers").lua_ls,
	})
end

M.cmake = function()
	require("lspconfig").cmake.setup({
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
	})
end
M.clangd = function()
	require("lspconfig").clangd.setup({
		capabilities = require("cmp_nvim_lsp").default_capabilities(),
	})
end

return M
