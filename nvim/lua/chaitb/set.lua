-- General Vim settings
vim.opt.number = true         -- Show line numbers
vim.opt.relativenumber = true -- Show relative line numbers

-- Tab settings
vim.opt.tabstop = 4           -- Number of spaces tabs count for
vim.opt.softtabstop = 4       -- Number of spaces for a tab in editing operations
vim.opt.shiftwidth = 4        -- Number of spaces to use for autoindent
vim.opt.expandtab = true      -- Use spaces instead of tabs
vim.opt.smartindent = true    -- Insert indents automatically

-- Search settings
vim.opt.hlsearch = false      -- Don't highlight search results
vim.opt.incsearch = true      -- Show search results as you type

-- UI settings
vim.opt.termguicolors = true  -- True color support
vim.opt.scrolloff = 8         -- Always keep 8 lines above/below cursor when scrolling
vim.opt.signcolumn = "yes"    -- Always show the signcolumn
vim.opt.colorcolumn = "80"    -- Show a column at 80 characters

-- Miscellaneous
vim.opt.wrap = false          -- Don't wrap lines
vim.opt.swapfile = false      -- Don't use swapfile
vim.opt.backup = false        -- Don't create backup files
vim.opt.undofile = true       -- Use persistent undo
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- Undo directory

-- Create undodir if it doesn't exist
local undodir = vim.fn.expand(vim.o.undodir)
if vim.fn.isdirectory(undodir) == 0 then
    vim.fn.mkdir(undodir, "p")
end