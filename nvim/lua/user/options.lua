local options = {
  backup = false,                          -- creates a backup file
  belloff = "all",
  clipboard = "unnamedplus",               -- allows neovim to access the system clipboard
  cmdheight = 1,                           -- more space in the neovim command line for displaying messages
  completeopt = { "menuone", "noselect" }, -- mostly just for cmp
  conceallevel = 0,                        -- so that `` is visible in markdown files
  shell = "/usr/bin/zsh",
  ttyfast = true,
  colorcolumn = "80",
  -- colorcolumn = "120",
  fileencoding = "utf-8",                  -- the encoding written to a file
  gdefault = true,
  hlsearch = true,                         -- highlight all matches on previous search pattern
  ignorecase = true,                       -- ignore case in search patterns
  mousehide = true,
  pumheight = 10,                          -- pop up menu height
  showmode = true,                         -- see things like -- INSERT -- anymore
  showtabline = 0,                         -- always show tabs
  smartcase = true,                        -- smart case
  smartindent = true,                      -- make indenting smarter again
  splitbelow = true,                       -- force all horizontal splits to go below current window
  splitright = true,                       -- force all vertical splits to go to the right of current window
  swapfile = false,                        -- creates a swapfile
  syntax = "on",
  termguicolors = true,                    -- set term gui colors (most terminals support this)
  timeoutlen = 1000,                        -- time to wait for a mapped sequence to complete (in milliseconds)
  ttimeoutlen = 0,                         -- remove visual mode escape delay
  undodir= '.vim/undodir',
  undofile = true,                         -- enable persistent undo
  updatetime = 300,                        -- faster completion (4000ms default)
  writebackup = false,                     -- if a file is being edited by another program (or was written to file while editing with another program), it is not allowed to be edited
  expandtab = true,                        -- convert tabs to spaces
  shiftwidth = 4,                          -- the number of spaces inserted for each indentation
  tabstop = 4,                             -- insert 2 spaces for a tab
  cursorline = true,                       -- highlight the current line
  number = true,                           -- set numbered lines
  laststatus = 2,
  showcmd = true,
  ruler = true,
  -- relativenumber = true,                  -- set relative numbered lines
  numberwidth = 4,                         -- set number column width to 2 {default 4}
  signcolumn = "yes",                      -- always show the sign column, otherwise it would shift the text each time
  wrap = false,                            -- display lines as one long line
  scrolloff = 8,                           -- is one of my fav
  sidescrolloff = 8,
}

vim.opt.diffopt:append("iwhite", "algorithm:patience", "indent-heuristic")
vim.opt.wildignore:append("**/virtualenv_run/**", "*.pyc", "*.pyo", "__pycache__", "*.o", "*~")
vim.opt.wildignore:append("*/.git/*", "*/tmp/*", "*.swp", "*.class")
vim.opt.shortmess:append "c"

-- change Netrw
vim.g.netrw_liststyle = 3
vim.g.netrw_winsize = 25
-- don't keep netrw hist files
vim.g.netrw_dirhistmax = 0

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.cmd "set whichwrap+=<,>,[,],h,l"
vim.cmd [[set iskeyword+=-]]
