local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap

--Remap space as leader key
keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --
-- Better window navigation
keymap.set("n", "<C-h>", "<C-w>h", opts)
keymap.set("n", "<C-j>", "<C-w>j", opts)
keymap.set("n", "<C-k>", "<C-w>k", opts)
keymap.set("n", "<C-l>", "<C-w>l", opts)

keymap.set("n", "<C-d>", "<C-d>zz", opts)
keymap.set("n", "<C-u>", "<C-u>zz", opts)

-- Resize with arrows
keymap.set("n", "<C-Up>", ":resize +1<CR>", opts)
keymap.set("n", "<C-Down>", ":resize -1<CR>", opts)
keymap.set("n", "<C-Left>", ":vertical resize -1<CR>", opts)
keymap.set("n", "<C-Right>", ":vertical resize +1<CR>", opts)

-- Navigate buffers
keymap.set("n", "<S-l>", ":bnext<CR>", opts)
keymap.set("n", "<S-h>", ":bprevious<CR>", opts)

keymap.set("n", "Q", "<nop>", opts)

-- Move text up and down
keymap.set("v", "<A-j>", ":m .+1<CR>==", opts)
keymap.set("v", "<A-k>", ":m .-2<CR>==", opts)
keymap.set("v", "p", '"_dP', opts)

-- Visual Block --
-- Move text up and down
keymap.set("x", "J", ":move '>+1<CR>gv=gv", opts)
keymap.set("x", "K", ":move '<-2<CR>gv=gv", opts)
keymap.set("x", "p", '"_dP', opts)

-- Terminal --
-- Better terminal navigation
keymap.set("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
keymap.set("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
keymap.set("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
keymap.set("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

keymap.set(
  "n",
  "<leader>sr",
  [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]]
)

keymap.set("v", "<leader>vr", ":s/")

keymap.set("v", "<", "<gv", { desc = "Shift highlight selection left" })
keymap.set("v", ">", ">gv", { desc = "Shift highlight selection right" })

keymap.set("n", "<leader>e", function()
  require("oil").open()
end, { desc = "Open oil" })

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")
