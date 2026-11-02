return {
  {
    "milanglacier/minuet-ai.nvim",
    event = "InsertEnter",
    config = function()
      local private_config_path = vim.fn.expand("~/.config/nvim/local/ai.lua")

      -- Private config (endpoint, api_key, model): not versioned,
      -- created from nvim/local/ai.lua by `just apply`.
      local ok, private_config = pcall(dofile, private_config_path)
      if not ok or type(private_config) ~= "table" then
        vim.notify(
          "ai: missing or invalid config at "
            .. private_config_path
            .. " - create it from nvim/local/ai.lua (edit api_key/model)",
          vim.log.levels.WARN
        )
        return
      end

      local user_config = private_config["milanglacier/minuet-ai.nvim"]
      if type(user_config) ~= "table" then
        vim.notify(
          "ai: no [milanglacier/minuet-ai.nvim] section in " .. private_config_path .. " - AI completion disabled",
          vim.log.levels.WARN
        )
        return
      end

      -- Final config: defaults merged with the user's private config.
      local config = vim.tbl_deep_extend("force", {
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
      }, user_config)

      require("minuet").setup(config)

      -- Ghost text is auto-triggered per buffer: minuet enables it through a
      -- FileType autocmd (vim.b.minuet_virtual_text_auto_trigger = true).
      -- Since this plugin lazy-loads on the first InsertEnter, any buffer
      -- opened before that moment already fired its FileType event, so minuet
      -- never saw it: those buffers keep the trigger disabled and would never
      -- show suggestions. Enable it manually for those already-open buffers.
      local virtualtext = config.virtualtext or {}
      local enabled_filetypes = virtualtext.auto_trigger_ft or {}
      local ignored_filetypes = virtualtext.auto_trigger_ignore_ft or {}
      local triggers_every_filetype = vim.tbl_contains(enabled_filetypes, "*")

      for _, buf in ipairs(vim.api.nvim_list_bufs()) do
        local filetype = vim.bo[buf].filetype
        local is_enabled = triggers_every_filetype or vim.tbl_contains(enabled_filetypes, filetype)
        local is_ignored = vim.tbl_contains(ignored_filetypes, filetype)

        if filetype ~= "" and is_enabled and not is_ignored then
          vim.api.nvim_buf_set_var(buf, "minuet_virtual_text_auto_trigger", true)
        end
      end
    end,
  },
}
