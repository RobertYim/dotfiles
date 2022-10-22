-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

---------------------
-- General Keymaps
---------------------

-- go to  beginning and end
keymap.set("i", "<C-b>", "<ESC>^i")
keymap.set("i", "<C-e>", "<End>")

-- navigate within insert mode
keymap.set("i", "<C-h>", "<Left>")
keymap.set("i", "<C-l>", "<Right>")
keymap.set("i", "<C-j>", "<Down>")
keymap.set("i", "<C-k>", "<Up>")

-- use C-C to exit insert mode
keymap.set("i", "<C-c>", "<ESC>")

-- clear search highlights
keymap.set("n", "<Esc>", ":nohl<CR>")

-- delete single character without copying into register
keymap.set("n", "x", '"_x')
keymap.set("n", "X", '"_X')
keymap.set("n", "s", '"_s')

-- increment/decrement numbers
keymap.set("n", "<leader>+", "<C-a>") -- increment
keymap.set("n", "<leader>-", "<C-x>") -- decrement

-- window management
keymap.set("n", "<leader>sv", "<C-w>v") -- split window vertically
keymap.set("n", "<leader>sh", "<C-w>s") -- split window horizontally
keymap.set("n", "<leader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<leader>sx", ":close<CR>") -- close current split window

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab

-- buffers management
-- close current buffer
keymap.set("n", "<leader>x", ":bd<CR>")
-- goto next buffer
keymap.set("n", "<tab>", ":bnext<CR>")
-- goto previous buffer
keymap.set("n", "<s-tab>", ":bprev<CR>")

-- Useful movemeent
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")
keymap.set("v", "H", "^")
keymap.set("v", "L", "$")
keymap.set("n", "<c-h>", "<c-w>h")
keymap.set("n", "<c-j>", "<c-w>j")
keymap.set("n", "<c-k>", "<c-w>k")
keymap.set("n", "<c-l>", "<c-w>l")

-- Use C-s to save file
keymap.set("n", "<C-s>", ":w<CR>")

-- Allow moving the cursor through wrapped lines with j, k
keymap.set("n", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
keymap.set("n", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })
keymap.set("x", "j", "v:count ? 'j' : 'gj'", { noremap = true, expr = true })
keymap.set("x", "k", "v:count ? 'k' : 'gk'", { noremap = true, expr = true })

-- 'Q' in normal mode enters Ex mode. You almost never want this
keymap.set("n", "Q", "<nop>")

----------------------
-- Plugin Keybinds
----------------------

-- nvim-tree
keymap.set("n", "<C-n>", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server (not on youtube nvim video)
keymap.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
