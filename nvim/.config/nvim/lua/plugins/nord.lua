-- Color scheme

return {
    "shaunsingh/nord.nvim",

    dependencies = {
        "nvim-treesitter/nvim-treesitter",
    },

    lazy = false,
    priority = 1000,

    init = function()
        vim.cmd(":colorschem nord")
    end,
}
