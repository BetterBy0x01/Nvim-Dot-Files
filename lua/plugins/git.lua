return {
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			-- setup gitsign with default properties
			require("gitsigns").setup({})

			-- set a vim motion for <Space> + g + h
			-- to preview changes to the file under the cursor in normal mode
			vim.keymap.set("n", "<leader>gh", ":Gitsigns preview_hunk<CR>", {
				desc = "[G]it Preview [H]unk",
			})
		end,
	},
	{
		"tpope/vim-fugitive",
		config = function()
			-- set a vim motion for <Space> + g + b
			-- to view the msot recent contributers to the file
			vim.keymap.set("n", "<leader>gb", ":Git blame<cr>", {
				desc = "[G]it [Blame]",
			})
			-- set a vim motion for <Space> + g + s
			-- to get the status of the git repo
			vim.keymap.set("n", "<leader>gs", ":Git status<cr>", {
				desc = "[G]it [S]tatus",
			})
			-- set a vim motion for <Space> + g + <Shift>A
			-- to all files changed to the staging area
			vim.keymap.set("n", "<leader>gA", ":Git add .<cr>", {
				desc = "[G]it add [A]ll",
			})
			-- set a vim motion to <Space> + g + a
			-- to add the current file and changes to the staging area
			vim.keymap.set("n", "<leader>ga", ":Git add", {
				desc = "[G]it [A]dd",
			})
			-- set a vim motion to <Space> + g + c
			-- to commit the current changes
			vim.keymap.set("n", "<leader>gc", ":Git commit", {
				desc = "[G]it [C]ommit",
			})
			-- set a vim motion to <Space> + g + p
			-- to push the commited changes to the remote repository
			vim.keymap.set("n", "<leader>gp", ":Git push", {
				desc = "[G]it [Push]",
			})
		end,
	},
}
