vim.cmd([[
set syntax
set expandtab
set tabstop=4
set shiftwidth=4
set autoindent
set smartindent
set hlsearch
set incsearch
set termguicolors
set fileencoding=utf-8
set encoding=utf-8
]])

-- 이전 위치 기억
vim.cmd([[ au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif ]])
