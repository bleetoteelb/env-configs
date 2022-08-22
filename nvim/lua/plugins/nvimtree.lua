require("nvim-tree").setup ({
	filters = {
		dotfiles = true,
	},
	git = {
		ignore = false
	}
})

vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', {noremap = true, silent = true})
vim.api.nvim_set_keymap('n', '<Leader>n', ':NvimTreeFindFile<CR>', {noremap = true, silent = true})
