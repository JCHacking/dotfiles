return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    event = "VeryLazy",

    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim", 
        "stevearc/dressing.nvim", 
    },

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
