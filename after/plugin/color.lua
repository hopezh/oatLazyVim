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

-- set cursorline as underline -------------------------------------------------
-- vim.api.nvim_set_hl(0, "CursorLine", { underline = true })

-- change cursolrline & cursorline number bg color -----------------------------
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "red" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "red" })
-- vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#292e42" })
-- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#292e42" })
vim.api.nvim_set_hl(0, "CursorLineNr", { bg = "#252525" })
vim.api.nvim_set_hl(0, "CursorLine", { bg = "#252525" })
