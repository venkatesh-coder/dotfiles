local opts = { noremap = true, silent = true }
local opts_nosilent = { noremap = true, silent = false }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.keymap.set

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
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
keymap("n", "<leader>w", "<C-w>", opts)

-- switch alternate buffers
keymap("n", "<leader><leader>", "<C-^>", opts)

-- navigating buffers
keymap("n", "<leader>n", ":bnext<cr>", opts)
keymap("n", "<leader>p", ":bprev<cr>", opts)

-- execute line as shell command
keymap("n", "Q", "!!zsh<cr>", opts)

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- change Y to behave like other edit commands eg.: C, D
keymap("n", "Y", "y$", opts)
-- Jump to tags and center
keymap("n", "<C-]>", "<C-]>zt", opts)

-- Vim Make
keymap("n", "<leader>m", ":make<CR>:cw 7<CR>", opts_nosilent)
keymap("n", "<leader>cm", ":set makeprg=", opts_nosilent)

-- add ablity to increment letters, really useful 10x dev secret
keymap("n", "<leader>i", ":set nrformats+=alpha", opts_nosilent)

-- Move text up and down
keymap("n", "<leader>k", "<Esc>:m .-2<CR>==gi<Esc>", opts)
keymap("n", "<leader>j", "<Esc>:m .+1<CR>==gi<Esc>", opts)

-- toggle relative numbering
keymap("n", "<leader>ll", ":set rnu!<CR>", opts)

-- save shortcut
keymap("n", "<C-s>", "<cmd>up<cr>", opts)

-- Copy shortcuts
keymap("n", "<leader>-", "ct_", opts)
-- Copy whole buffer
keymap("n", "<leader>c", ":w !xsel -ib<cr><cr>", opts)

-- Paste shortcuts
keymap("n", "<leader>pe", "$p", opts)

keymap("n", "<leader>p", '"0p', opts)
keymap("n", "<leader>P", '"0P', opts)

-- terminal
keymap("n", "<leader>t", ":terminal<CR>", opts)

-- NvimTree
keymap("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- Telescope
keymap("n", "<leader>ff", ":Telescope find_files theme=dropdown<cr>", opts)
keymap("n", "<leader>fb", ":Telescope buffers<cr> theme=dropdown", opts)
keymap("n", "<leader>fp", ":Telescope projects<cr> theme=dropdown", opts)
keymap("n", "<leader>fg", ":Telescope live_grep<cr> theme=dropdown", opts)
keymap("n", "<leader>ft", ":Telescope tags<cr> theme-dropdown", opts)

-- Insert --

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Move text up and down
keymap("v", "p", '"_dP', opts)

-- Paste shorcuts
keymap("v", "<leader>p", '"0p', opts)
keymap("v", "<leader>P", '"0P', opts)

-- Visual Block --
-- Move text up and down
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)



-- Command --
-- cscope
keymap("c", "Gentags", "!gentags", opts)
-- ctags
keymap("c", "MakeTags", "!ctags", opts)
 

-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)


-- Custom
keymap("n", "<F2>", "<cmd>nohlsearch<cr>", opts)
-- NOTE: the fact that tab and ctrl-i are the same is stupid
-- keymap("n", "<TAB>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
-- keymap("n", "Q", "<cmd>bdelete!<CR>", opts)
keymap("n", "<F1>", ":e ~/vimwiki/<cr>", opts)
keymap("n", "<F3>", ":e .<cr>", opts)
keymap("n", "<F4>", "<cmd>Telescope resume<cr>", opts)
keymap("n", "<F5>", "<cmd>Telescope commands<CR>", opts)
keymap(
  "n",
  "<F6>",
  [[:echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>]],
  opts
)
keymap("n", "<F7>", "<cmd>TSHighlightCapturesUnderCursor<cr>", opts)
keymap("n", "<F8>", "<cmd>TSPlaygroundToggle<cr>", opts)
keymap("n", "<F11>", "<cmd>lua vim.lsp.buf.references()<CR>", opts)
keymap("n", "<F12>", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)

