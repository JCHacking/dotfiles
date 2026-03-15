return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    opts = {
      extensions = {
        "fzf",
        "lazy",
        "neo-tree",
        "quickfix",
        "toggleterm",
      },
    },
  },

  {
    "akinsho/bufferline.nvim",
    event = "VeryLazy",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    opts = {
      options = {
        diagnostics = "nvim_lsp",
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "Directory",
          },
        },
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts)
      if vim.bo.filetype == "alpha" then
        vim.opt.showtabline = 0
      end
    end,
  },
}
