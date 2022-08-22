vim.api.nvim_set_keymap('n', '<leader>db', ":lua require'dap'.toggle_breakpoint()<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dc', ":lua require'dap'.continue()<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dr', ":lua require'dap'.run_last()<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>dv', ":lua require'dap'.step_over()<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>di', ":lua require'dap'.step_into()<CR>", {expr = false, noremap = true})
vim.api.nvim_set_keymap('n', '<leader>do', ":lua require'dap'.step_out()<CR>", {expr = false, noremap = true})

vim.fn.sign_define('DapBreakpoint', {text='🟥', texthl='',linehl='',numhl=''})
vim.fn.sign_define('DapStopped', {text='🟢', texthl='',linehl='',numhl=''})
