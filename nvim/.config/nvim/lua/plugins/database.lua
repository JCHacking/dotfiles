return {
    -- Core
    {
        "tpope/vim-dadbod",
        lazy = true,
    },

    -- UI
    {
        "kristijanhusak/vim-dadbod-ui",
        lazy = true,

        dependencies = {
            "tpope/vim-dadbod",
        },

        opts = {
            default_text_options = {
                terminal = "vsplit",
            }
        },

        keys = {
            {
                "<leader>db",
                "<cmd>DBUIToggle<CR>",
                mode = "n",
                desc = "Open/Close DB UI",
            }
        },

        config = function() end,
    }
}
