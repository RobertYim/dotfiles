-- mappings
local keymap = vim.keymap
keymap.set("n", "H", "^")
keymap.set("n", "L", "$")
keymap.set("v", "H", "^")
keymap.set("v", "L", "$")
keymap.set("n", "<Esc>", ":nohl<CR>")

vim.opt.guicursor = "n-v-c-sm:hor10,i-ci-ve:ver25,r-cr-o:hor20"

