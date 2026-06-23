vim.g.mapleader = " "
vim.cmd("set noexpandtab")
vim.cmd("set tabstop=4")
vim.opt.relativenumber = true

-- create splits
vim.keymap.set("n", "<leader>sv", ":vsp<CR>", {})
vim.keymap.set("n", "<leader>sh", ":sp<CR>", {})
vim.keymap.set("n", "<leader>sq", ":q<CR>", {})

-- navigate splits
vim.keymap.set("n", "<A-h>", "<C-w>h", {})
vim.keymap.set("n", "<A-l>", "<C-w>l", {})
vim.keymap.set("n", "<A-j>", "<C-w>j", {})
vim.keymap.set("n", "<A-k>", "<C-w>k", {})

vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")
