-- File manager side-bar

return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
        "stevearc/dressing.nvim", -- Pretty box
    },

    event = "VeryLazy",

    keys = {
        { "<leader>f", "<cmd>Neotree toggle<CR>", desc = "Open/Close file explorer" }
    },

    opts = {
        close_if_last_window = true,

        use_popups_for_input = false,

        filesystem = {
            filtered_items = {
                visible = true,
                never_show = {
                    ".git"
                },
            }
        },
    }
}
