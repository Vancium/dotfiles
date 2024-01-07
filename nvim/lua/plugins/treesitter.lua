return {

	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	lazy = true,
	config = function()
		local configs = require("nvim-treesitter.configs")
		-- TODO set up treesitter extensions

		configs.setup({
			ensure_installed = { "c", "lua", "vim", "vimdoc", "javascript", "html", "cmake" },
			sync_install = false,
			auto_install = true,
			highlight = { enable = true },
			indent = { enable = true },
			autotag = { enable = true },
			ignore_install = { "" },
			modules = {},
		})
	end,
}
