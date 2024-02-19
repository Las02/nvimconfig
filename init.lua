-- local autocmd = vim.api.nvim_create_autocmd

-- Set relative line numbers
vim.opt.relativenumber = true
-- vim.api.nvim_set_keymap('n', 's', '<Plug>(easymotion-w)', {})
-- vim.api.nvim_set_keymap('n', 'S', '<Plug>(easymotion-b)', {})
-- vim.api.nvim_set_keymap('n', 's', '<Plug>(Hop-HopWord)', {})
vim.api.nvim_set_keymap('n', 's', '<cmd>HopWord <cr>', {})
vim.api.nvim_set_keymap('v', 's', '<cmd>HopWord <cr>', {})

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })
