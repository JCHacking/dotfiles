return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    config = function()
      local local_file = vim.fn.expand("~/.config/nvim/local/ai.lua")

      local ok, local_config = pcall(dofile, local_file)
      if not ok or type(local_config) ~= "table" then
        vim.notify(
          "ai: missing or invalid config at "
            .. local_file
            .. " - create it from nvim/local/ai.lua (edit api_key/model)",
          vim.log.levels.WARN
        )
        return
      end

      local opts = local_config["milanglacier/minuet-ai.nvim"]
      if type(opts) ~= "table" then
        vim.notify(
          "ai: no [milanglacier/minuet-ai.nvim] section in " .. local_file .. " - AI completion disabled",
          vim.log.levels.WARN
        )
        return
      end

      require("minuet").setup(vim.tbl_deep_extend("force", {
        virtualtext = {
          auto_trigger_ft = { "*" },
          keymap = {
            accept = "<M-Tab>",
            accept_line = "<M-a>",
            accept_n_lines = "<M-z>",
            next = "<M-]>",
            prev = "<M-[>",
            dismiss = "<C-]>",
          },
        },
      }, opts))
    end,
  },
}
