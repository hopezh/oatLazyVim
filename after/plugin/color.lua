-- toggle dark/light theme -----------------------------------------------------
-- [thanks kkafar](https://github.com/folke/tokyonight.nvim/discussions/426#discussioncomment-7102103)

local function toggle_theme()
    if vim.opt.background:get() == "dark" then
        vim.opt.background = "light"
        -- vim.cmd("colorscheme tokyonight-day")
    else
        vim.opt.background = "dark"
        -- vim.cmd("colorscheme tokyonight-moon")
    end
end

-- stylua: ignore
vim.keymap.set(
    "n",
    "<leader>tt",
    toggle_theme,
    { desc = "Toggle dark/light theme" }
)

-- -- toggle transparency of tokyonight -------------------------------------------
-- -- stylua: ignore
-- local function toogle_opacity()
--     vim.g.tokyonight_transparent = true
-- end
-- -- stylua: ignore
-- vim.keymap.set(
--     "n",
--     "<leader>tp",
--     toogle_opacity,
--     { desc = "Toggle opacity" }
-- )

-- -- set cursorline as underline
-- -- stylua: ignore
-- vim.api.nvim_set_hl(
--     0,
--     "CursorLine",
--     { underline = true })

vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "red" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "red" })
