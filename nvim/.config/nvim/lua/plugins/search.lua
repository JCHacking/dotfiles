return {
    "junegunn/fzf",

    dependencies = {
        "junegunn/fzf.vim"
    },

    event = "VeryLazy",

    keys = {
        { "<leader>ff", "<cmd>Files<CR>", desc = "Search file by name" },
        { "<leader>fc", "<cmd>Rg<CR>", desc = "Search file by name" },
    },
}
