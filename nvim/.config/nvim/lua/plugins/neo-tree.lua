return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  lazy = false,
  opts = {},
  config = function()
    vim.keymap.set(
      "n",
      "<C-b>",
      ":Neotree toggle right<CR>",
      {
        noremap = true,
        silent = true,
        desc = "Neotree open filesystem"
      }
    )
    require("neo-tree").setup({
      window = {
        mappings = {
          ["<C-b>"] = "close_window",
        }
      },
      filesystem = {
        hijack_netrw_behavior = "disabled",
      },
      event_handlers = {
        {
          event = "file_open_requested",
          handler = function()
            require("neo-tree.command").execute({ action = "close" })
          end,
        },
      },
    })
  end,
}
