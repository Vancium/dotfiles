-- Shout out to vonheikemen
-- https://www.reddit.com/r/neovim/comments/ud2w4k/how_to_remap_netrw_to_n_in_keybindingsinitlua/

vim.api.nvim_create_autocmd("filetype", {
	pattern = "netrw",
	desc = "Better mappings for netrw",
	callback = function()
		local bind = function(lhs, rhs)
			vim.keymap.set("n", lhs, rhs, { remap = true, buffer = true })
		end

		-- edit new file
		bind("n", "%")
		-- rename file
		bind("r", "R")
		-- Remaps C-l to window navigation instead of refreshing netrw
		bind("<C-l>", "<C-w>l")
	end,
})
