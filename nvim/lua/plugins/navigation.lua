return {
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    keys = {
      { "s", mode = { "n", "x", "o" }, function() require("flash").jump() end, desc = "Flash jump" },
      { "S", mode = { "n", "x", "o" }, function() require("flash").treesitter() end, desc = "Flash treesitter select" },
      { "r", mode = "o", function() require("flash").remote() end, desc = "Flash remote" },
    },
    config = function()
      require("flash").setup()
      vim.api.nvim_set_hl(0, "FlashLabel", { bg = "#ff9800", fg = "#000000", bold = true })
    end,
  },

  {
    "ibhagwan/fzf-lua",
    dependencies = { "junegunn/fzf" },

    cmd = { "FzfLua" },
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
