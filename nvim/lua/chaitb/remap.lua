vim.g.mapleader = " "

-- VSCode-like keybindings
-- Toggle file explorer (Oil instead of sidebar)
vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Toggle file explorer" })

-- Close current buffer (similar to close active editor)
vim.keymap.set("n", "<leader>q", ":bd<CR>", { desc = "Close current buffer" })

-- Buffer navigation (similar to next/previous editor in group)
vim.keymap.set("n", "H", ":bprevious<CR>", { desc = "Previous buffer" })
vim.keymap.set("n", "L", ":bnext<CR>", { desc = "Next buffer" })

-- Window navigation with Ctrl+h and Ctrl+l
vim.keymap.set("n", "<C-h>", "<C-w>h", { desc = "Navigate to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w>l", { desc = "Navigate to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w>j", { desc = "Navigate to the window below" })
vim.keymap.set("n", "<C-k>", "<C-w>k", { desc = "Navigate to the window above" })

-- Finding files (similar to showAllEditorsByMostRecentlyUsed)
vim.keymap.set("n", "<leader>f", "<cmd>Telescope buffers<CR>", { desc = "Find recent buffers" })

-- Moving lines up and down
vim.keymap.set("n", "<A-S-j>", ":m .+1<CR>==", { desc = "Move line down" })
vim.keymap.set("n", "<A-S-k>", ":m .-2<CR>==", { desc = "Move line up" })
vim.keymap.set("v", "<A-S-j>", ":m '>+1<CR>gv=gv", { desc = "Move selection down" })
vim.keymap.set("v", "<A-S-k>", ":m '<-2<CR>gv=gv", { desc = "Move selection up" })

-- Navigation between locations
vim.keymap.set("n", "<leader><leader>", "<C-o>", { desc = "Go back to previous location" })

-- Go to declaration/definition
vim.keymap.set("n", "<leader>j", "gd", { desc = "Go to definition" })
vim.keymap.set("n", "<leader>k", "<cmd>vsplit<CR>gd", { desc = "Go to definition in split" })

-- Quick open (similar to VSCode Cmd+P)
vim.keymap.set("n", "<C-p>", "<cmd>Telescope find_files<CR>", { desc = "Find files" })

-- File operations
-- New folder and file operations would need a plugin or custom function

-- Additional useful mappings
vim.keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlighting" })

