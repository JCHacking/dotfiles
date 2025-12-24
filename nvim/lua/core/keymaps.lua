vim.g.mapleader = " "  -- Set SPACE for leader key

-- Buffers
vim.keymap.set("n", "<leader>n", "<cmd>bnext<CR>", { desc = "Go to the next buffer" })
vim.keymap.set("n", "<leader>p", "<cmd>bprev<CR>", { desc = "Go to the previous buffer" })

-- Tabs
vim.keymap.set("n", "<leader>tn", "<cmd>tabnext<CR>", { desc = "Go to the next tab" })
vim.keymap.set("n", "<leader>tp", "<cmd>tabprev<CR>", { desc = "Go to the previous tab" })
vim.keymap.set("n", "<leader>tq", "<cmd>tabclose<CR>", { desc = "Close current tab" })

-- Window
vim.keymap.set("n", "<leader>h", "<C-w>h", { desc = "Move Left Window"})
vim.keymap.set("n", "<leader>j", "<C-w>j", { desc = "Move Down Window"})
vim.keymap.set("n", "<leader>k", "<C-w>k", { desc = "Move Up Window"})
vim.keymap.set("n", "<leader>l", "<C-w>l", { desc = "Move Right Window"})

vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically"})
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally"})
vim.keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Resize windows to make equal size"})
vim.keymap.set("n", "<leader>sq", "<cmd>close<CR>", { desc = "Close current split"})

-- Scroll
vim.keymap.set("n", "<leader>cl", function() vim.opt.scrolloff = 999 - vim.opt.scrolloff end, { desc = "Lock/Unlock cursor line stay in the middle" })

-- Search
vim.keymap.set("n", "<leader>nh", "<cmd>nohl<CR>", { desc = "Clear search highlights" })

