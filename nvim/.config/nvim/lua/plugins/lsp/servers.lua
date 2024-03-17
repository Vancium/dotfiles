local M = {}

M.lua_ls = {
	setup = function()
		require("lspconfig").lua_ls.setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

M.clangd = {
	setup = function()
		require("lspconfig").clangd.setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

M.cmake = {
	setup = function()
		require("lspconfig").cmake.setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

M.tsserver = {
	setup = function()
		require("lspconfig").tsserver.setup({
			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

M.html = {
	setup = function()
		require("lspconfig").html.seup({

			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

M.cssls = {
	setup = function()
		require("lspconfig").css.seup({

			capabilities = require("cmp_nvim_lsp").default_capabilities(),
			settings = {},
		})
	end,
}

return M
