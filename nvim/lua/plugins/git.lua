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
          gitsigns.stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
        end, "Stage Change")
        map("n", "<leader>gS", gitsigns.stage_buffer, "Stage Buffer")

        --- Undo Stage
        map("n", "<leader>gu", gitsigns.undo_stage_hunk, "Undo Stage Hunk")

        --- Reset
        map("n", "<leader>gr", gitsigns.reset_hunk, "Reset Hunk")
        map("v", "<leader>gr", function()
          gitsigns.reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
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
        map({ "o", "x" }, "ih", ":<C-U>Gitsigns select_hunk<CR>", "Gitsigns select hunk")
      end,
    },
  },

  -- Diff viewer
  {
    "sindrets/diffview.nvim",
    cmd = { "DiffviewOpen", "DiffviewFileHistory" },
    keys = {
      { "<leader>gv", "<cmd>DiffviewOpen<CR>", desc = "Diff View" },
      { "<leader>gh", "<cmd>DiffviewFileHistory %<CR>", desc = "File History" },
      { "<leader>gH", "<cmd>DiffviewFileHistory<CR>", desc = "Repo History" },
      { "<leader>gx", "<cmd>DiffviewClose<CR>", desc = "Close Diff View" },
      { "<leader>gm", "<cmd>DiffviewOpen<CR>", desc = "Merge Tool (3-way)" },
    },
    opts = {
      enhanced_diff_hl = true,
      view = {
        merge_tool = {
          layout = "diff3_mixed",
          disable_diagnostics = true,
        },
      },
    },
  },

  -- GIT UI (Neogit - native Magit-style client)
  {
    "NeogitOrg/neogit",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "sindrets/diffview.nvim",
    },
    cmd = "Neogit",
    keys = {
      { "<leader>gg", "<cmd>Neogit<CR>", desc = "Open Neogit" },
      { "<leader>gc", "<cmd>Neogit commit<CR>", desc = "Neogit Commit" },
    },
    opts = {
      integrations = {
        diffview = true,
      },
    },
  },
}
