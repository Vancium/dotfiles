return {
	"ThePrimeagen/harpoon",
	lazy = false,
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		local remap = vim.keymap.set

		remap("n", "<leader>a", mark.add_file, { desc = "[H]arpoon [A]dd" })
		remap("n", "<leader>h", ui.toggle_quick_menu, { desc = "[H]arpoon [O]pen" })
		remap("n", "]", ui.nav_next, { desc = "[H]arpoon [N]ext" })
		remap("n", "[", ui.nav_next, { desc = "[H]arpoon [P]rev" })
	end,
}
