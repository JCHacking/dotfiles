return {
    -- Color scheme
    {
        "shaunsingh/nord.nvim",
        lazy = false,

        dependencies = {
            "nvim-treesitter/nvim-treesitter",
        },

        init = function()
            vim.cmd(":colorschem nord")
        end,
    },

    -- Improve Colors
    {
        "NvChad/nvim-colorizer.lua",
        event = { "BufReadPre", "BufNewFile" },

        opts = {},
        config = function(_, opts)
            require("colorizer").setup(opts)

            -- execute colorizer as soon as possiblevim
            vim.defer_fn(function()
                require("colorizer").attach_to_buffer(0)
            end, 0)
        end,
    },

    -- Indent Line
    {
        "lukas-reineke/indent-blankline.nvim",
        event = { "BufReadPre", "BufNewFile" },

        main = "ibl",
        opts = {
            scope = {
                enabled = false,
            },
        },
        config = function(_, opts)
            local hooks = require "ibl.hooks"
            hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
            require("ibl").setup(opts)
        end,
    }
}
