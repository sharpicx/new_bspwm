local opts = { noremap = true, silent = true }
local map = vim.keymap.set

--Leader Key
map("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---------- Normal Mode ----------

--Window Resize
map("n", "<S-h>", ":vertical resize +2<CR>", opts)
map("n", "<S-j>", ":resize +2<CR>", opts)
map("n", "<S-k>", ":resize -2<CR>", opts)
map("n", "<S-l>", ":vertical resize -2<CR>", opts)

---------- Insert Mode ----------

--jj gang rise up
map("i", "jj", "<ESC>", opts)

---------- Visual Mode -----------

--Move Selections
map("v", "<S-h>", "< gv", opts)
map("v", "<S-j>", ":m '>+1<CR>gv=gv", opts)
map("v", "<S-k>", ":m '<-2<CR>gv=gv", opts)
map("v", "<S-l>", "> gv", opts)

---------- Terminal Mode ----------

--Escape Terminal
map('t', 'jj', [[<C-\><C-n>]], opts)
map('t', '<C-[>', [[<C-\><C-n>]], opts)
map('t', '<esc>', [[<C-\><C-n>]], opts)

--------- Custom Functions ----------

--Edit Nvim
map("n", "<leader>en", ":lua edit_nvim()<CR>", opts)

---------- Plugins ----------------

--Fugative
map("n", "<leader>ga", ":G add<Space>", opts)
map("n", "<leader>gs", ":G status<CR>", opts)
map("n", "<leader>gb", ":G branch<Space>", opts)
map("n", "<leader>gm", ":G merge<Space>", opts)
map("n", "<leader>gpl", ":G pull<Space>", opts)
map("n", "<leader>gplo", ":G pull origin<Space>", opts)
map("n", "<leader>gps", ":G push<Space>", opts)
map("n", "<leader>gpso", ":G push origin<Space>", opts)
map("n", "<leader>gc", ":G commit<Space>", opts)
map("n", "<leader>gcm", ":G commit -m<Space>", opts)
map("n", "<leader>gch", ":G checkout<Space>", opts)
map("n", "<leader>gchb", ":G checkout -b<Space>", opts)
map("n", "<leader>gcoe", ":G config user.email<Space>", opts)
map("n", "<leader>gcon", ":G config user.name<Space>", opts)

--Nvim Tree
map("n", "<leader>t", ":NvimTreeToggle<CR>", opts)

--Telescope

map("n", "<leader>s", ":nohl<CR>", opts)

--BufferLine
map("n", "<C-h>", ":BufferLineCyclePrev<CR>", opts)
map("n", "<C-l>", ":BufferLineCycleNext<CR>", opts)

map("n", "<leader><S-h>", ":BufferLineMovePrev<CR>", opts)
map("n", "<leader><S-l>", ":BufferLineMoveNext<CR>", opts)
