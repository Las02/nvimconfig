-- local autocmd = vim.api.nvim_create_autocmd

-- Set relative line numbers
vim.opt.relativenumber = true
vim.api.nvim_set_keymap('n', 's', '<cmd>HopWord <cr>', {})
vim.api.nvim_set_keymap('v', 's', '<cmd>HopWord <cr>', {})
vim.api.nvim_set_keymap('o', 's', '<cmd>HopWord <cr>', {})


vim.keymap.set({"i", "s"}, "<M-n>", function() require('luasnip').jump( 1) end, {silent = true})
vim.keymap.set({"i", "s"}, "<M-N>", function() require('luasnip').jump(-1) end, {silent = true})

vim.g.slime_target = 'tmux'
vim.g.slime_bracketed_paste = 1

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",

