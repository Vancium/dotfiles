local utils = require("Ethos.utils.util")
local M = {}

M.print_mappings = function()
	P(mappings)
end

M.set_general_mappings = function()
	for mode, vals in pairs(mappings.general) do
		for remap, settings in pairs(vals) do
			vim.keymap.set(mode, remap, settings[1], settings[2])
		end
	end
end

M.set_plugin_mappings = function()
	for plugin, remaps in pairs(mappings.plugins) do
		for mode, vals in pairs(remaps) do
			for remap, settings in pairs(vals) do
				vim.keymap.set(mode, remap, settings[1], settings[2])
			end
		end
	end
end

M.set_mappings = function()
	M.set_general_mappings()
	M.set_plugin_mappings()
end

return M
