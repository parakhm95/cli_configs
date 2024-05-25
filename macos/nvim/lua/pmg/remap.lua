-- vim.g.mapleader = " "
-- From PrimeAgen, moves the highlighted lines up and down 
vim.keymap.set("v","J",":m '>+1<CR>gv=gv")
vim.keymap.set("v","K",":m '<-2<CR>gv=gv")
-- From PrimeAgen, keeps the highlighted search term in the center 
vim.keymap.set("n","n","nzzzv")
vim.keymap.set("n","N","Nzzzv")
vim.keymap.set("n","<leader>y","\"+y")
vim.keymap.set("v","<leader>y","\"+y")
vim.keymap.set("n","<leader>Y","\"+Y")
