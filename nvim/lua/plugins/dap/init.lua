return {
	"rcarriga/nvim-dap",
	dependencies = {
		"rcarriga/nvim-dap-ui",
		"ldelossa/nvim-dap-projects",
		"theHamsta/nvim-dap-virtual-text",
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		local dap = require("dap")
		local dapui = require("dapui")
		local dap_projects = require("nvim-dap-projects").search_project_config()
		dapui.setup()
		require("nvim-dap-virtual-text").setup()

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end
	end,
}
