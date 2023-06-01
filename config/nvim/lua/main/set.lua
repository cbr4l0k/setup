-- === General ===

-- Set the GUI cursor to the default value
vim.opt.guicursor = ""

-- === Line Numbering ===
-- Enable line numbers
vim.opt.nu = true

-- Enable relative line numbers
vim.opt.relativenumber = true

-- === Indentation ===
-- Set the number of spaces for a tab
vim.opt.tabstop = 4

-- Set the number of spaces for a tab in insert mode and other indenting commands
vim.opt.softtabstop = 4

-- Set the number of spaces for each step of indenting
vim.opt.shiftwidth = 4

-- Use spaces instead of tabs for indenting
vim.opt.expandtab = true

-- Enable smart indenting
vim.opt.smartindent = true

-- === Text Wrapping ===
-- Enable text wrapping
vim.opt.wrap = true

-- Enable line breaking at characters other than spaces or tabs
vim.opt.linebreak = true

-- === File Handling ===
-- Disable creation of swap files
vim.opt.swapfile = false

-- Disable creation of backup files
vim.opt.backup = false

-- Set the directory for storing undo files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"

-- Enable persistent undo
vim.opt.undofile = true

-- === Search ===
-- Disable highlighting of search results
vim.opt.hlsearch = false

-- Enable incremental search
vim.opt.incsearch = true

-- === Appearance ===
-- Enable true colors in the terminal
vim.opt.termguicolors = true

-- Set a large scrolloff value to always show at least 999 lines above and below the cursor
vim.opt.scrolloff = 999

-- === Visual Guides ===
-- Set a vertical line at column 80 to indicate the recommended maximum line length
vim.opt.colorcolumn = "80"
