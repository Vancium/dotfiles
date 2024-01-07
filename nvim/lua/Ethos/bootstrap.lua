local M = {}

M.setup = function()
	-- Setup Ethos Globals
	local utils = require("Ethos.utils.util")
	utils.load_config()
	vim.keymap.set("n", "<leader>e", "<cmd> Ex <cr>")
end

return M
