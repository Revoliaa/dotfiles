local opts = { noremap = true, silent = true }

local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Move text in visual mode
keymap("v", "<A-j>", ":m +1<CR>", opts)
keymap("v", "<A-k>", ":m -2<CR>", opts)

-- Move text in visual block mode
keymap("x", "<A-j>", ":move '>+1<CR>gv-gv", opts)
keymap("x", "<A-k>", ":move '<-2<CR>gv-gv", opts)

-- Toggling file explorer
keymap("n", "<leader>r", ":NvimTreeToggle<CR>", opts)

-- Closing bufffers
keymap("n", "<leader>q", ":BufDel<CR>", opts)

-- Formatting
keymap("n", "<C-f>", ":lua vim.lsp.buf.format()<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
