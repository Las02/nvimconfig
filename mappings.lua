---@type MappingsTable
local M = {}

M.general = {
  -- n = {
  --   [";"] = { ":", "enter command mode", opts = { nowait = true } },
  -- -- },
  n = {
    ["<leader>da"] = {
      function()
        vim.lsp.buf.add_workspace_folder()
      end,
      "Add workspace folder",
    },

    ["<leader>dr"] = {
      function()
        vim.lsp.buf.remove_workspace_folder()
      end,
      "Remove workspace folder",
    },

    ["<leader>dl"] = {
      function()
        print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
      end,
      "List workspace folders",
    },
    ["<leader>r"] = {
      function()
        require("nvchad.renamer").open()
      end,
      "LSP rename",
    },
    ["<M-d>"] = { "<C-d>M", "enter command mode", opts = { nowait = true } },
    ["<M-u>"] = { "<C-u>M", "enter command mode", opts = { nowait = true } },
    ["<M-^>"] = { "<C-^>" },
    ["<M-o>"] = { "<C-o>" },
    ["<tab>"] = { "<C-^>" },
    ["<M-i>"] = { "<C-i>", opts = { noremap = true } },
    ["<leader>f"] = { "<cmd> Telescope find_files <CR>", "Find files" },
    ["<leader>x"] = { "<cmd> bd <CR>", "Find files" },
    ["<leader>ge"] = { "<cmd> Telescope live_grep <CR>", "Live grep" },
    ["<leader>gw"] = { "<cmd> Telescope current_buffer_fuzzy_find <CR>", "Find in current buffer" },
    ["<leader>b"] = { "<cmd> Telescope buffers <CR>", "Find buffers" },
    ["<leader>o"] = { "<cmd> Telescope oldfiles <CR>", "Find oldfiles" },
    ["<leader>e"] = { "<cmd> Telescope lsp_dynamic_workspace_symbols <CR>", "Treeshitter" },
    ["<leader>w"] = { "<cmd> Telescope lsp_document_symbols <CR>", "Treeshitter" },
    -- ["<leader>t"] = { "<cmd> Telescope treesitter <CR>", "Treeshitter" },
    ["<A-p>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
      opts = { remap = true },
    },
  },
  v = {
    [">"] = { ">gv", "indent" },
  },
  t = {
    -- toggle in terminal mode
    ["<A-p>"] = {
      function()
        require("nvterm.terminal").toggle "float"
      end,
      "Toggle floating term",
    },
  },
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
    ["<M-z>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(1)
      end,
      "󱪼 Navigate to file 1",
    },
    ["<M-x>"] = {
      function()
        local harpoon = require "harpoon"
        harpoon:list():select(2)
      end,
      "󱪽 Navigate to file 2",
    },
    ["<M-c>"] = {
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
