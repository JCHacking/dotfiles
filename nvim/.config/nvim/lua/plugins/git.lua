return {
    -- GIT Signs in code
    {
        "lewis6991/gitsigns.nvim",

        event = { "BufReadPre", "BufNewFile" },

        opts = {
            on_attach = function(bufnr)
                local gitsigns = require("gitsigns")

                local function map(mode, l, r, desc)
                    vim.keymap.set(mode, l, r, {
                        desc = desc,
                        buffer = bufnr,
                    })
                end

                -- Navigation
                map("n", "]g", gitsigns.next_hunk, "Next Hunk")
                map("n", "[g", gitsigns.prev_hunk, "Previous Hunk")

                -- Actions
                --- Stage
                map("n", "<leader>gs", gitsigns.stage_hunk, "Stage Hunk")
                map("v", "<leader>gs", function()
                    gitsigns.stage_hunk { vim.fn.line("."), vim.fn.line("v")}
                end, "Stage Change")
                map("n", "<leader>gS", gitsigns.stage_buffer, "Stage Buffer")

                --- Undo Stage
                map("n", "<leader>gu", gitsigns.undo_stage_hunk, "Stage Hunk")

                --- Reset
                map("n", "<leader>gr", gitsigns.reset_hunk, "Reset Hunk")
                map("v", "<leader>gr", function()
                    gitsigns.reset_hunk { vim.fn.line("."), vim.fn.line("v")}
                end, "Reset Change")
                map("n", "<leader>gR", gitsigns.reset_buffer, "Reset Buffer")

                --- Preview
                map("n", "<leader>gp", gitsigns.preview_hunk, "Preview Hunk")

                --- Blame
                map("n", "<leader>gb", function()
                    gitsigns.blame_line({ full = true })
                end, "Show/Hide Blame")
                map("n", "<leader>gB", gitsigns.toggle_current_line_blame, "Show/Hide Blame in line of cursor")

                --- Diff
                map("n", "<leader>gd", gitsigns.diffthis, "Diff this")
                map("n", "<leader>gD", function()
                    gitsigns.diffthis("~")
                end, "Diff this")

                -- Text Object
                map({ "o", "x" }, "ih", ":<C-U>Gisigns select_hunk<CR>", "Gitsigns select hunk")

            end,
        },
    },

    -- GIT UI Menu
    {
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
    },
}
