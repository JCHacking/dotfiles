return {
  -- Highlight and search TODO, FIXME, NOTE comments
  {
    "folke/todo-comments.nvim",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
    keys = {
      { "<leader>ft", "<cmd>TodoFzfLua<CR>", desc = "Search TODOs" },
    },
  },

  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      debounce_delay = 1000,
    },
  },

  {
    "nvim-mini/mini.bufremove",
    version = false,

    keys = {
      {
        "<leader>q",
        function()
          require("mini.bufremove").delete(0)
        end,
        mode = "n",
        desc = "Close current buffer",
      },
    },
  },
}
