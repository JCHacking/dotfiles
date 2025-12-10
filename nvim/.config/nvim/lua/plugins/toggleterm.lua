-- Terminal

return {
    "akinsho/toggleterm.nvim",
    version = "*",
    lazy = true,

    opts = {
        direction = "float",
    },

    keys = {
        {
            "<leader>t",
            "<cmd>ToggleTerm<CR>",
            mode = {"n", "t"},
            desc = "Open/Close Terminal",
        }
    },
}
