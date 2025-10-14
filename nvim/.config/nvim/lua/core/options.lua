vim.g.have_nerd_font = true   -- Set I have Nerd Font

-- Backup
vim.opt.directory = vim.fn.stdpath("cache") .. "/swap"    -- Swap directory
vim.opt.backupdir = vim.fn.stdpath("cache") .. "/backup"  -- Backup directory

-- Clipboard
vim.opt.clipboard = "unnamedplus"  -- Use system clipboard

-- Encoding
vim.opt.encoding = "utf-8"  -- Use encoding UTF-8

-- Hightlight
vim.opt.cursorline = true       -- Hightligh line of cursor

-- History
vim.opt.history = 5000  -- Limit of changes (To remeber for undo)

-- Identation
vim.opt.smartindent = true  -- Use identation for language of file
vim.opt.expandtab = true    -- Transform tab to spaces
vim.opt.shiftwidth = 4      -- Spaces of identation when use commands
vim.opt.tabstop = 4         -- Spaces of identation for appearance
vim.opt.softtabstop = 4     -- Spaces of identation when press TAB of BACKSPACE

-- Mouse
vim.opt.mouse = "a"

-- Numbers
vim.opt.number = true  -- Show numbers of lines
vim.opt.ruler = true   -- Show line and column number of currect cursor position

-- Performance
vim.opt.lazyredraw = true  -- Don't update screen during macro and script execution
vim.opt.redrawtime = 1500  -- Milliseconds for redrawing the display
vim.opt.updatetime = 100   -- Milliseconds without typing anything to write swap to disk

-- Scroll
vim.opt.scrolloff = 5  -- Keep at least 5 lines over and below cursor

-- Sign column
vim.opt.signcolumn = "yes" -- Always have space to sign in column

-- Statusbar
vim.opt.laststatus = 2    -- Show clasic status bar always in every window
vim.opt.showmode = false  -- Not show mode in classic statubar

-- Timeout
vim.opt.timeout = true
vim.opt.timeoutlen = 500

-- Undo
vim.opt.undofile = true -- Enable undo file
vim.opt.undodir = vim.fn.stdpath("cache") .. "/undo"

