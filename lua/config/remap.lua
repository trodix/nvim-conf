local builtin = require("telescope.builtin")

-- move selected lines UP/DOWN
vim.keymap.set("v", "<S-down>", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "<S-up>", ":m '<-2<CR>gv=gv")

-- search
vim.keymap.set("n", "<C-e>", builtin.find_files, {})
vim.keymap.set("n", "<C-f>", builtin.live_grep, {})

-- switch tabs with left/right arrows
vim.keymap.set("n", "<C-Right>", ":bn<CR>")
vim.keymap.set("n", "<C-Left>", ":bp<CR>")
