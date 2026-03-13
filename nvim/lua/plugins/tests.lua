return {
  {
    "nvim-neotest/neotest",
    dependencies = {
      "nvim-neotest/nvim-nio",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/neotest-python",
      "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("neotest").setup({
        adapters = {
          require("neotest-python")({
            runner = "pytest",
          }),
        },
      })

      vim.keymap.set("n", "<leader>tr", function()
        require("neotest").run.run()
      end, { desc = "Run nearest test" })
      vim.keymap.set("n", "<leader>tf", function()
        require("neotest").run.run(vim.fn.expand("%"))
      end, { desc = "Run test file" })
      vim.keymap.set("n", "<leader>ts", function()
        require("neotest").summary.toggle()
      end, { desc = "Toggle test summary" })
      vim.keymap.set("n", "<leader>to", function()
        require("neotest").output_panel.toggle()
      end, { desc = "Toggle test output" })
    end,
  },
}
