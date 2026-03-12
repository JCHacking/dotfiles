return {
    {
        "ibhagwan/fzf-lua",
        dependencies = { "junegunn/fzf" },

        keys = {
            { "<leader>ff", function() require("fzf-lua").files() end, desc = "Search file by name" },
            { "<leader>fc", function() require("fzf-lua").live_grep() end, desc = "Search file by content" },
        },
    },
}
