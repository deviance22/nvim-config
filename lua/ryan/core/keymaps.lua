vim.g.mapleader = " "

local opts = { noremap = true, silent = true }

local map = vim.keymap.set

local set = vim.opt

map("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

map("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })

-- auto add closing {, [, (, ', ", <
--map('i', '{<cr>', '{<cr>}<ESC>kA<CR>', {})
--closing_pairs = {'}', ')', ']', '"', "'", '>'}
--opening_pairs = {'{', '(', '[', '"', "'", '<'}
--for key, chr in pairs(opening_pairs)
--do
--  map('i', chr, chr..closing_pairs[key]..'<esc>i', {})
--end

-- increment/decrement numbers
map("n", "<leader>+", "<C-a>", { desc = "Increment number" }) -- increment
map("n", "<leader>-", "<C-x>", { desc = "Decrement number" }) -- decrement

-- window management
-- Disable highlights results from your previous search
--set.hlsearch = false

-- Disable scroll to end of file
map("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split window vertically
map("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split window horizontally
map("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split windows equal width & height
map("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

map("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) -- open new tab
map("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) -- close current tab
map("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) --  go to next tab
map("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) --  go to previous tab
map("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) --  move current buffer to new tab

-- Disable scroll to end of file
--set.scrolloff = 3

-- CodeSnap
map("v", "<leader>cc", "<cmd>CodeSnap<CR>", { desc = "Save selected code snapshot into clipboard" })
map("v", "<leader>cs", "<cmd>CodeSnapSave<CR>", { desc = "Save selected code snapshot into ~/Pictures" })
map("v", "<leader>p", '"_dP', { desc = "Paste without yanking" })
