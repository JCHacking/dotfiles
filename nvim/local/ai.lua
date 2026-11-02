-- Copy to ~/.config/nvim/local/ai.lua and edit it (just apply does this).
-- That file is NOT versioned.
return {
  ["milanglacier/minuet-ai.nvim"] = {
    provider = "PROVIDER",
    n_completions = 1,
    request_timeout = 5,
    context_window = 8000,
    throttle = 500,
    debounce = 300,
    virtualtext = {
      show_on_completion_menu = true,
    },
    provider_options = {
      openai_compatible = {
        api_key = function()
          return "YOUR_API_KEY"
        end,
        end_point = "END_POINT",
        model = "MODEL",
        name = "NAME",
        stream = true,
        optional = {
          max_tokens = 128,
        },
      },
    },
  },
}
