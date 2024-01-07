local M = {}

M.completion = function()
	return require("cmp").config.window.bordered()
end
M.documentation = function()
	return require("cmp").config.window.bordered()
end

return M
