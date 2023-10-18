-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- use "jk" to ESC -------------------------------------------------------------
vim.keymap.set("c", "jk", "<ESC>") -- command-line mode
vim.keymap.set("i", "jk", "<ESC>") -- insert mode
vim.keymap.set("o", "jk", "<ESC>") -- operator pending mode
vim.keymap.set("s", "jk", "<ESC>") -- select mode
vim.keymap.set("v", "jk", "<ESC>") -- visual & select mode
vim.keymap.set("x", "jk", "<ESC>") -- visual mode

-- in normal mode, use <leader>+n to clear highlight ---------------------------
vim.keymap.set("n", "<leader>h", ":noh<CR>")

-- vim-easy-align --------------------------------------------------------------
vim.cmd([[nmap ga <Plug>(EasyAlign)]])
vim.cmd([[xmap ga <Plug>(EasyAlign)]])

-- inlay-hints (for neovim >= 0.10) --------------------------------------------
-- stylua: ignore
if vim.lsp.inlay_hint then
    vim.keymap.set(
        "n",
        "<leader>uh",
        function()
            vim.lsp.inlay_hint(0, nil)
        end,
        { desc = "Toggle inlay hints" }
    )
end

-- -- toggle transparency of tokyonight
-- -- stylua: ignore
-- vim.keymap.set(
--     "n",
--     "<leader>uo",
--     function()
--         vim.g.tokyonight_transparent(0, nil)
--     end,
--     { desc = "Toggle opacity" }
-- )

-- open zoxide in telescope extension
-- stylua: ignore
vim.keymap.set(
    "n",
    "<leader>Z",
    "<cmd>Zi<CR>",
    { desc = "Open zoxide" }
)

-- Using ufo provider need remap `zR` and `zM`. If Neovim is 0.6.1, remap yourself
vim.keymap.set("n", "zR", require("ufo").openAllFolds)
vim.keymap.set("n", "zM", require("ufo").closeAllFolds)
