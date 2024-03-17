local remap = vim.keymap.set

-- Normal mode remaps
remap("n", "<C-e>", "<CMD> Ex <CR>", { desc = "Explore" })
remap("n", "<C-c>", "ESC", { desc = "Escape" })

remap("n", "<C-d>", "<C-d>zz", { desc = "Vertical movement keeps cursor in the center" })
remap("n", "<C-u>", "<C-u>zz", { desc = "Vertical movement keeps cursor in the center" })

remap("n", "<leader>c", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "[R]eplace [W]ord" })
remap("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

remap("n", "n", "nzzzv", { desc = "Search Movement keeps cursor in the center" })
remap("n", "N", "Nzzzv", { desc = "Search Movement keeps cursor in the center" })

-- Window Navigation
remap("n", "<C-l>", "<C-w>l")
remap("n", "<C-k>", "<C-w>k")
remap("n", "<C-j>", "<C-w>j")
remap("n", "<C-h>", "<C-w>h")

remap("n", "<leader>s", ":ClangdSwitchSourceHeader<cr>")

-- Visual Mode
remap("v", "J", ":m '>+1<CR>gv=gv")
remap("v", "K", ":m '<-2<CR>gv=gv")

remap("n", "<leader>tt", ":TodoTelescope<cr>")
