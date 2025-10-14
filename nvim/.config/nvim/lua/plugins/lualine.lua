-- Top and bottom status line

return {
    "nvim-lualine/lualine.nvim",

    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },

    lazy = false,

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
