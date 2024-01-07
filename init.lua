-- local autocmd = vim.api.nvim_create_autocmd

-- Set relative line numbers
vim.opt.relativenumber = true

vim.g.slime_target = 'tmux'
vim.g.slime_bracketed_paste = 1

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
