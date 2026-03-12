return {
    -- Auto Install Formatters
    {
        "WhoIsSethDaniel/mason-tool-installer.nvim",
        event = "VeryLazy",
        dependencies = { "williamboman/mason.nvim" },
        opts = {
            ensure_installed = { "stylua", "ruff", "prettier" },
            auto_update = false,
            run_on_start = true,
        },
    },

    -- Code Formatting
    {
        "stevearc/conform.nvim",
        event = { "BufWritePre" },
        keys = {
            {
                "<leader>ft",
                function()
                    require("conform").format({ async = true, lsp_fallback = true })
                end,
                mode = "n",
                desc = "Format buffer",
            },
        },
        opts = {
            formatters_by_ft = {
                lua = { "stylua" },
                python = { "ruff_format" },
                json = { "prettier" },
                yaml = { "prettier" },
                markdown = { "prettier" },
            },
            format_on_save = {
                timeout_ms = 500,
                lsp_fallback = true,
            },
        },
    },
}
