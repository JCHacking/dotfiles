return {
    "junegunn/fzf",
    event = "VeryLazy",

    dependencies = {
        "junegunn/fzf.vim"
    },

    keys = {
        { "<leader>ff", "<cmd>Files<CR>", desc = "Search file by name" },
        { "<leader>fc", "<cmd>Rg<CR>", desc = "Search file by name" },
    },
}
