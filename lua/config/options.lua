-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt

-- disable neovim's default netrw when using nvim-tree -------------------------
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- display ---------------------------------------------------------------------
opt.background = "dark"
opt.colorcolumn = "80" -- highlight the 80th column, nil when virt-column.nvim is used
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
opt.list = false

-- search ----------------------------------------------------------------------
opt.hlsearch = true
opt.incsearch = true

-- treesitter-based folding ----------------------------------------------------
opt.foldlevel = 20
opt.foldcolumn = "3"
opt.foldmethod = "expr" -- disabled for nvim-ufo using treesitter as provider
opt.foldexpr = "nvim_treesitter#foldexpr()" -- disabled for nvim-ufo using treesitter as provider

-- stop undo file --------------------------------------------------------------
opt.undofile = false -- stop unlimited undo to even changes made in previous session

-- no swap file ----------------------------------------------------------------
vim.cmd("set noswapfile")

-- syntax ----------------------------------------------------------------------
vim.cmd("syntax on")

-- specify file format ---------------------------------------------------------
-- to remove the ^M character at the end of each line
opt.fileformat = "unix"

-- highlight color for headlines.nvim ------------------------------------------
vim.cmd([[highlight Headline1 guibg=#c5c5c5 guifg=#000000]])
vim.cmd([[highlight Headline2 guibg=#aeaeae guifg=#000000]])
vim.cmd([[highlight Headline3 guibg=#979797 guifg=#000000]])
vim.cmd([[highlight Headline4 guibg=#808080 guifg=#000000]])
vim.cmd([[highlight Headline5 guibg=#696969 guifg=#000000]])
vim.cmd([[highlight Headline6 guibg=#525252 guifg=#000000]])
vim.cmd([[highlight CodeBlock guibg=#3b3b3b]])
vim.cmd([[highlight Dash guibg=#202020 gui=bold]])

-- show cmd in statusline ------------------------------------------------------
opt.showcmd = true

-- blinking cursor -------------------------------------------------------------
opt.guicursor =
    "n-v-c:block,i-ci-ve:ver25,r-cr:hor20,o:hor50,a:blinkwait700-blinkoff400-blinkon250-Cursor/lCursor,sm:block-blinkwait175-blinkoff150-blinkon175"

-- set the color of virt-column symbol -----------------------------------------
-- vim.cmd([[highlight VirtColumn guifg=#00FF00]])
