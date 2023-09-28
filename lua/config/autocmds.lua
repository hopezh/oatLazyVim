-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- leap ------------------------------------------------------------------------
-- change backdrop color
-- vim.api.nvim_set_hl(
--     0,
--     "LeapBackdrop",
--     { fg = "red" }
-- )

-- change label hl bg & fg colors
-- vim.api.nvim_set_hl(0, "LeapLabelPrimary", {
--     bg = "black",
--     fg = "yellow",
-- })

-- custum fold text ------------------------------------------------------------
function _G.custom_fold_text()
    local line = vim.fn.getline(vim.v.foldstart)
    local line_count = vim.v.foldend - vim.v.foldstart + 1
    -- return " ⚡ " .. line .. ": " .. line_count .. " lines"
    -- return "  " .. line .. ": " .. line_count .. " lines"
    return "" .. line .. "    " .. line_count .. " lines"
    -- return " >> " .. line .. ": " .. line_count .. " lines"
end

vim.opt.foldtext = "v:lua.custom_fold_text()"
vim.opt.fillchars = { eob = "-", fold = " " }
vim.opt.viewoptions:remove("options")

-- specify cursor line number color --------------------------------------------
-- this will override relevant settings in tokynight
-- vim.api.nvim_set_hl(0, "CursorLineNr", { fg = "yellow" })

-- use onedarkpro color scheme -------------------------------------------------
-- vim.cmd("colorscheme onedark")
-- vim.cmd("colorscheme onedark_vivid")
-- vim.cmd("colorscheme onedark_dark")

-- use the dark_flat color scheme ----------------------------------------------
-- vim.cmd.colorscheme("dark_flat")
