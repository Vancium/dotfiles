return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.6",
	-- or                              , branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-smart-history.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
	},
	config = function()
		require("telescope").setup({
			extensions = {
				wrap_results = true,

				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
			},
		})

		pcall(require("telescope").load_extension, "smart_history")
		pcall(require("telescope").load_extension, "ui-select")

		local builtin = require("telescope.builtin")

		vim.keymap.set("n", "<space>ff", builtin.find_files)
		vim.keymap.set("n", "<space>gf", builtin.git_files)
		vim.keymap.set("n", "<space>fh", builtin.help_tags)
		vim.keymap.set("n", "<space>fg", builtin.live_grep)
		vim.keymap.set("n", "<space>/", builtin.current_buffer_fuzzy_find)

		vim.keymap.set("n", "<space>en", function()
			builtin.find_files({ cwd = vim.fn.stdpath("config") })
		end)
	end,
}
