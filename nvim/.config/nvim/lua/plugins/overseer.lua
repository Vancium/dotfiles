return {

	-- https://github.com/stevearc/overseer.nvim?tab=readme-ov-file
	"stevearc/overseer.nvim",
	opts = {},
	config = function()
		local overseer = require("overseer")

		-- Make
		overseer.register_template({
			name = "Build",
			builder = function(params)
				return {
					cmd = { "./Build.sh" },
					components = { "default" },
				}
			end,
		})
		overseer.register_template({
			name = "Run",
			builder = function(params)
				return {
					cmd = { "./Run.sh" },
					components = { "default" },
				}
			end,
		})

		overseer.register_template({
			name = "Test",
			builder = function(params)
				return {
					cmd = { "./Test.sh" },
					components = { "default" },
				}
			end,
		})

		overseer.register_template({
			name = "Clean",
			builder = function(params)
				return {
					cmd = { "rm" },
					components = { "default" },
					args = { "-rf", "bin" },
				}
			end,
		})

		overseer.setup()

		local remap = vim.keymap.set

		remap("n", ";b", function()
			vim.cmd("OverseerRun Build")
		end, { desc = "PremakeBuild" })

		remap("n", ";t", function()
			vim.cmd("OverseerRun Test")
		end)

		remap("n", ";r", function()
			vim.cmd("OverseerRun Run")
		end, { desc = "Run" })
		remap("n", ";o", function()
			vim.cmd("OverseerToggle bottom")
		end, { desc = "Toggle Overseer" })

		remap("n", ";c", function()
			vim.cmd("OverseerRun Clean")
		end, { desc = "Clean" })
	end,
}
