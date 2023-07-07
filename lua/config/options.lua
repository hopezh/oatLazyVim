-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- disable neovim's default netrw when using nvim-tree -------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- display ---------------------------------------------------------------------
opt.colorcolumn = "80" -- highlight the 80th column
opt.relativenumber = false
opt.signcolumn = "yes:3" -- always show signcolumn, max width=3
opt.wrap = true

-- tabs & indentation ----------------------------------------------------------
opt.autoindent = true
opt.shiftwidth = 4
opt.showtabline = 2
opt.smarttab = true
opt.softtabstop = 4
opt.tabstop = 4

-- search ----------------------------------------------------------------------
opt.hlsearch = true
opt.incsearch = true

-- treesitter-based folding ----------------------------------------------------
opt.foldlevel = 20
opt.foldcolumn = "3"
opt.foldmethod = "expr"
opt.foldexpr = "nvim_treesitter#foldexpr()"

-- stop undo file --------------------------------------------------------------
opt.undofile = false -- stop unlimited undo to even changes made in previous session

-- no swap file ----------------------------------------------------------------
vim.cmd("set noswapfile")

-- syntax ----------------------------------------------------------------------
vim.cmd("syntax on")

-- specify file format ---------------------------------------------------------
-- to remove the ^M character at the end of each line
opt.fileformat = "unix"

-- -- highlight color for headlines.nvim ------------------------------------------
vim.cmd([[highlight Headline1 guibg=#454545]])
vim.cmd([[highlight Headline2 guibg=#404040]])
vim.cmd([[highlight Headline3 guibg=#353535]])
vim.cmd([[highlight CodeBlock guibg=#303030]])
vim.cmd([[highlight Dash guibg=#202020 gui=bold]])

-- show cmd in statusline ------------------------------------------------------
opt.showcmd = true

-- blinking cursor -------------------------------------------------------------
opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"
