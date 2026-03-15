return {
  {
    "ibhagwan/fzf-lua",
    dependencies = { "junegunn/fzf" },

    keys = {
      {
        "<leader>ff",
        function()
          require("fzf-lua").files()
        end,
        desc = "Search file by name",
      },
      {
        "<leader>fc",
        function()
          require("fzf-lua").live_grep()
        end,
        desc = "Search file by content",
      },
    },
  },

  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
      "3rd/image.nvim",
      "stevearc/dressing.nvim",
    },

    cmd = { "Neotree" },
    keys = {
      { "<leader>e", "<cmd>Neotree toggle<CR>", desc = "Open/Close file explorer" },
    },

    opts = {
      close_if_last_window = true,

      use_popups_for_input = false,

      filesystem = {
        follow_current_file = { enabled = true },
        filtered_items = {
          visible = true,
          never_show = {
            ".git",
            "__pycache__",
          },
          never_show_by_pattern = {
            ".*cache*",
          },
        },
      },
    },
  },
}
