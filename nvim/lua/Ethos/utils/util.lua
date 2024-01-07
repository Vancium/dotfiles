local M = {}

-- Luv bindings for neovim
-- &networking
-- &filesystem
-- &process managment
M.uv = vim.uv

-- Neovim API
M.api = vim.api

-- Bridge between neovim & vimscript functions
M.fn = vim.fn

-- Neovim options
M.o = vim.opt

-- Neovim globals
M.g = vim.g

-- Neovim global module
M.glob = vim.glob

-- Neovim keymaps
M.keymap = vim.keymap

M.get_config_path = function()
	local path = M.fn.stdpath("config")
	return path
end

M.combine_strings = function(lhs, rhs)
	return lhs .. rhs
end

-- Get files from specified path`
M.get_modules_from_path = function(path)
	local nvim_path = M.get_config_path()
	local modules_path = M.combine_strings(nvim_path, path)
	local modules = {}

	for _, module in ipairs(M.fn.glob(modules_path, true, true)) do
		table.insert(modules, M.fn.fnamemodify(module, ":t:r"))
	end

	return modules
end

M.filter_table = function(table, filters)
	vim.tbl_filter(function(file)
		for _, filter in ipairs(filters) do
			if file:match(filter) then
				return false
			end
		end
		return true
	end, table)
	return table
end

M.get_modules = function()
	local modules = M.get_modules_from_path("/lua/Ethos/*.lua")
	local filters = { "init", "globals", "lazy", "options" }
	local filtered_modules = M.filter_table(modules, filters)
	return filtered_modules
end

M.load_config = function()
	require("Ethos.globals")
	require("Ethos.options")
	local mods = M.get_modules()
	for _, mod in pairs(mods) do
		local mod_path = M.combine_strings("Ethos.", mod)
		require(mod_path)
	end
end

M.set_opt = function(scope, opt, setting)
	vim[scope][opt] = setting
end

M.cmd_to_string = function(cmd)
	return "<cmd>" .. cmd .. "<cr>"
end

M.str_to_tbl = function(v)
	if type(v) == "string" then
		v = { v }
	end
	return v
end

return M
