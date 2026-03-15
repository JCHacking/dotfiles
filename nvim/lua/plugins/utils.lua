return {
  -- Auto Save
  {
    "okuuva/auto-save.nvim",
    event = { "InsertLeave", "TextChanged" },
    opts = {
      debounce_delay = 1000,
    },
  },

  -- Improve Manage Remove Buffers
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
