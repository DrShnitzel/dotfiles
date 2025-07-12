vim.g.leader = " "
-- Ruby style 2 spaces instead of tab
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
-- Save on cmd + s
vim.cmd("nnoremap <D-s> :wa<CR>")
vim.cmd("inoremap <D-s> <Esc>:wa<CR>gi")

require("config.lazy")

