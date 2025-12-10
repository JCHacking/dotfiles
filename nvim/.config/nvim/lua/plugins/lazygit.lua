-- GIT UI

return {
    "kdheepak/lazygit.nvim",
    lazy = true,

    depenendencies = {
        "nvim-lua/plenary.nvim",
    },

    cmd = {
        "LazyGit",
        "LazyGitConfig",
        "LazyGitCurrentFile",
        "LazyGitFilter",
        "LazyGitFilterCurrentFile",
    },
    keys = {
        { "<leader>g", "<cmd>LazyGit<CR>", desc = "Open/Close GIT UI" },
    },
}
