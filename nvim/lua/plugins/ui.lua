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
        custom_filter = function(buf_number)
          local ft = vim.bo[buf_number].filetype
          local ignored = { "DiffviewFiles", "DiffviewFileHistory", "NeogitStatus", "NeogitLog" }
          for _, v in ipairs(ignored) do
            if ft == v then return false end
          end
          return true
        end,
        offsets = {
          {
            filetype = "neo-tree",
            text = "Explorer",
            highlight = "Directory",
          },
        },
        close_command = function(bufnum)
          local bufs = vim.tbl_filter(function(b)
            return vim.bo[b].buflisted and vim.bo[b].buftype == "" and b ~= bufnum
          end, vim.api.nvim_list_bufs())
          if #bufs > 0 then
            vim.api.nvim_set_current_buf(bufs[1])
          end
          vim.cmd("bd " .. bufnum)
        end,
      },
    },
    config = function(_, opts)
      require("bufferline").setup(opts)
      if vim.bo.filetype == "alpha" then
        vim.opt.showtabline = 0
      end
    end,
  },

  {
    "folke/which-key.nvim",
    event = "VeryLazy",
  },
}
