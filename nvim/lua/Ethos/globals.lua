local utils = require("Ethos.utils.util")

_G.P = function(v)
	print(vim.inspect(v))
end

--TODO redo keymaps, put plugin specific keymaps into plugin folder, general keymaps in Ethos/keymaps.lua
_G.mappings = {
	general = {
		n = {
			["<leader>r"] = {
				[[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]],
				{ desc = "[R]eplace cursor word" },
			},
			["<leader>x"] = { "<cmd>!chmod +x %<CR>", { desc = "[E]xecutable" } },
			[">"] = { ">gv", { desc = "[I]dent Line" } },
			["<"] = { "<gv", { desc = "[O]utdent Line" } },
			["n"] = { "nzzzv", { desc = "Search movement keeps cursor in middle" } },
			["N"] = { "Nzzzv", { desc = "Search movement keeps cursor in middle" } },
			["<C-d>"] = { "<C-d>zz", { desc = "vertical movement keeps cursor in middle" } },
			["<C-u>"] = { "<C-u>zz", { desc = "vertical movement keeps cursor in middle" } },
			["od"] = { "<cmd> lua vim.diagnostic.open_float()<cr>", { desc = "[O]pen [D]iagnostics" } },
			["]d"] = { "<cmd> lua vim.diagnostic.goto_next()<cr>", { desc = "[N]ext [D]iagnostics" } },
			["<leader>cs"] = { "<cmd> ClangdSwitchSourceHeader <cr>" },
		},
		v = {
			[">"] = { ">gv", { desc = "[I]ndent line" } },
			["<"] = { "<gv", { desc = "[O]utdent line" } },

			["J"] = { ":m '>+1<CR>gv=gv", { desc = "down" } },
			["K"] = { ":m '<-2<CR>gv=gv", { desc = "Move line up" } },

			["<C-j>"] = { "<C-d>zz", { desc = "vertical movement keeps cursor in middle" } },
			["<C-k>"] = { "<C-u>zz", { desc = "vertical movement keeps cursor in middle" } },
		},
	},
	plugins = {
		["telescope"] = {
			n = {
				["<leader>en"] = {
					function()
						require("plugins.telescope.custom").edit_neovim()
					end,
					{ desc = "[E]dit [N]eovim" },
				},
				["<leader>ft"] = {
					function()
						vim.cmd([[ Telescope ]])
					end,
					{ desc = "[T]elescope" },
				},
				["<leader>ff"] = {
					function()
						require("telescope.builtin").find_files()
					end,
					{ desc = "[F]ind [F]iles" },
				},
				["<leader>fg"] = {
					function()
						require("telescope.builtin").git_files()
					end,
					{ desc = "[F]ind [G]it" },
				},
				["<leader>fs"] = {
					function()
						require("telescope.builtin").grep_string({
							search = vim.fn.input("Grep: "),
						})
					end,
					{ desc = "[F]ind [G]it" },
				},
				["<leader>fi"] = { "<cmd> Telescope import <cr>", { desc = "[F]ind [I]mports" } },
			},
		},
		["harpoon"] = {
			n = {
				["<leader>h"] = {
					function()
						require("harpoon.ui").toggle_quick_menu()
					end,
					{ desc = "[H]arpoon" },
				},
				["<leader>a"] = {
					function()
						require("harpoon.mark").add_file()
					end,
					{ desc = "[H]arpoon [A]dd" },
				},
				["<leader>]"] = {
					function()
						require("harpoon.ui").nav_prev()
					end,
					{ desc = "[H]arpoon [P]rev" },
				},
				["<leader>["] = {
					function()
						require("harpoon.ui").nav_next()
					end,
					{ desc = "[H]arpoon [N]ext" },
				},
			},
		},
		["cmake"] = {
			n = {
				["<C-c>g"] = { "<cmd> CMakeGenerate <cr>" },
				["<C-c>b"] = { "<cmd> CMakeBuild <cr>" },
				["<C-c>s"] = { "<cmd> CMakeSettings <cr>" },
				["<C-c>c"] = { "<cmd> CMakeClean <cr>" },
			},
		},
		["trouble"] = {
			n = {
				["<C-q>"] = {
					function()
						require("trouble").toggle()
					end,
					{ desc = "[T]rouble" },
				},
				["<C-t>"] = {
					"<cmd> TodoTrouble <cr>",
				},
				["]d"] = {
					function()
						require("trouble").next({ jump = true, skip_groups = true })
					end,
					{ desc = "[D]iagnostics [N]ext" },
				},
				["[d"] = {
					function()
						require("trouble").previous({ jump = true, skip_groups = true })
					end,
					{ desc = "[D]iagnostics [N]ext" },
				},
			},
		},
		["dap"] = {
			n = {
				["-db"] = {
					function()
						require("dap").toggle_breakpoint()
					end,
				},
				["-dc"] = {
					function()
						require("dap").set_breakpoint(vim.fn.input("[DAP] Condition: "))
					end,
					{ desc = "[D]ap [C]ondtional" },
				},
				["-dt"] = {
					function()
						require("dapui").toggle()
					end,
					{},
				},
				["<F1>"] = {
					function()
						require("dap").step_back()
					end,
					{},
				},
				["<F2>"] = {
					function()
						require("dap").step_into()
					end,
					{},
				},
				["<F3>"] = {
					function()
						require("dap").step_over()
					end,
					{},
				},
				["<F4>"] = {
					function()
						require("dap").step_out()
					end,
					{},
				},
				["<F5>"] = {
					function()
						require("dap").continue()
					end,
					{},
				},
			},
		},
	},
}

_G.TypeOf = function(x)
	print(type(x))
end
