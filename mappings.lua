---@type MappingsTable
local M = {}

M.general = {
  -- n = {
  --   [";"] = { ":", "enter command mode", opts = { nowait = true } },
  -- -- },
  n = {
    ["<M-d>"] = { "<C-d>M", "enter command mode", opts = { nowait = true } },
    ["<M-u>"] = { "<C-u>M", "enter command mode", opts = { nowait = true } },
    ["<M-^>"] = { "<C-^>", },
    ["<M-o>"] = { "<C-o>", },
    ["<M-i>"] = { "<C-i>", },
    ["<A-p>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term", opts = { noremap = true }
    },
  },
  v = {
    [">"] = { ">gv", "indent"},
  },
  t = {
    -- toggle in terminal mode
    ["<A-p>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },}
}


-- M.copilot = {
--   i = {
--     ["<C-j>"] = {
--       function()
--         vim.fn.feedkeys(vim.fn['copilot#Accept'](), '')
--       end,
--       "Copilot Accept",
--       {replace_keycodes = true, nowait=true, silent=true, expr=true, noremap=true}
--     }
--   }
-- }


M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():append()
      end,
      "󱡁 Harpoon Add file",
    },
    ["<leader>ta"] = { "<CMD>Telescope harpoon marks<CR>", "󱡀 Toggle quick menu" },
    ["<leader>s"] = {
      function()
        local harpoon = require "harpoon"
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end,
      "󱠿 Harpoon Menu",
    },
    ["<M-q>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<M-w>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<M-e>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(3)
      end,
      "󱪾 Navigate to file 3",
    },
    ["<M-r>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(4)
      end,
      "󱪿 Navigate to file 4",
    },
  },
}



return M
