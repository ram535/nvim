vim.g.mapleader = " "

vim.opt.clipboard = "unnamedplus"

vim.opt.autochdir = true

-- tabs & indentation
vim.opt.tabstop = 2       -- 2 spaces for tabs (prettier default)
vim.opt.shiftwidth = 2    -- 2 spaces for indent width
vim.opt.expandtab = true  -- expand tab to spaces
vim.opt.autoindent = true -- copy indent from current line when starting new one
vim.opt.smartindent = true

-- line wrapping
vim.opt.wrap = false -- disable line wrapping

-- search settings
vim.opt.ignorecase = true -- ignore case when searching
vim.opt.smartcase = true  -- if you include mixed case in your search, assumes you want case-sensitive

-- cursor line
vim.opt.cursorline = true -- highlight the current cursor line

-- appearance
vim.opt.termguicolors = true
vim.opt.background = "dark" -- colorschemes that can be light or dark will be made dark
vim.opt.signcolumn = "yes"  -- show sign column so that text doesn't shift

-- backspace
vim.opt.backspace = "indent,eol,start" -- allow backspace on indent, end of line or insert mode start position

-- split windows
vim.opt.splitright = true -- split vertical window to the right
vim.opt.splitbelow = true -- split horizontal window to the bottom

-- turn off swapfile
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.writebackup = false

-- clipboard
vim.opt.clipboard = "unnamedplus" -- use system clipboard as default register

vim.g.clipboard = {               -- install xclip
   name = "xclip",
   copy = {
      ["+"] = "xclip -f -sel clip",
      ["*"] = "xclip -f -sel clip",
   },
   paste = {
      ["+"] = "xclip -o -sel clip",
      ["*"] = "xclip -o -sel clip",
   },
   cache_enabled = 1,
}

vim.api.nvim_set_keymap("n", "p", "P", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "p", "P", { noremap = true, silent = true })

-- Disable some extension providers
vim.g.loaded_python3_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0
