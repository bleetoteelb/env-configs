require 'bufferline'.setup()

vim.api.nvim_set_keymap('n', '<C-h>', ":BufferLineCyclePrev<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<C-l>', ":BufferLineCycleNext<CR>", {expr = false, noremap = true})
