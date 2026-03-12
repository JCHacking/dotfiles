return {
    {
        "junegunn/fzf.vim",
        event = "VeryLazy",

        dependencies = {
            "junegunn/fzf"
        },

        keys = {
            { "<leader>ff", "<cmd>Files<CR>", desc = "Search file by name" },
            { "<leader>fc", "<cmd>Rg<CR>", desc = "Search file by name" },
        },
    },

    {
        "ibhagwan/fzf-lua",
        lazy = true,
    },
}
