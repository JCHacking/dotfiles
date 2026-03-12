return {
    "akinsho/toggleterm.nvim",
    version = "*",

    opts = {
        direction = "float",
    },

    keys = {
        {
            "<leader>tt",
            "<cmd>ToggleTerm<CR>",
            mode = {"n", "t"},
            desc = "Open/Close Terminal",
        },
    },
}
