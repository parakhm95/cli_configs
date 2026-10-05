-- vim.g.mapleader = " "
-- From PrimeAgen, moves the highlighted lines up and down 
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")
-- 1. Map 'y' in Normal mode to copy to system clipboard
-- vim.keymap.set("n", "y", '"+y')

-- 2. Map 'Y' in Normal mode to copy line to system clipboard
-- vim.keymap.set("n", "Y", '"+Y')

-- 3. Map 'y' in Visual mode to copy selection to system clipboard
-- vim.keymap.set("v", "y", '"+y')

-- Use 'p' in Normal mode to paste from system clipboard
-- vim.keymap.set("n", "p", '"+p')
-- vim.keymap.set("v", "p", '"+p')
vim.opt.clipboard = "unnamedplus"
