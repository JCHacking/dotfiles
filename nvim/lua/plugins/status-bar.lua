return {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    opts = {
        tabline = {
            lualine_a = {
                {
                    "buffers",
                    symbols = {
                        alternate_file = "",
                    },
                },
            },
            lualine_z = { "tabs" },
        },

        extensions = {
            "fzf",
            "lazy",
            "neo-tree",
        },
    },
}
