-- DB

return {
    {
        "tpope/vim-dadbod",
        lazy = true,
    },
    {
        "kristijanhusak/vim-dadbod-ui",

        dependencies = {
            "tpope/vim-dadbod",
        },

        lazy = true,

        opts = {
            default_text_options = {
                terminal = "vsplit",
            }
        },

        cmd = { "DBUIToggle", "DBUIOpen", "DBUIWizard" },
        keys = {
            {
                "<leader>db",
                "<cmd>DBUIToggle<CR>",
                mode = "n",
                desc = "Open/Close DB UI",
            }
        },
    }
}
