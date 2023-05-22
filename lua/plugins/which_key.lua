return {
    "folke/which-key.nvim",

    opts = function()
        require("which-key").register({
            -- add keymap group for those keybindings not using <leader>
            ["z"] = { name = "+fold" },

            -- add keymap group and keybindings using <leader>
            ["<leader>z"] = {
                name = "OatKey",
                m = {
                    "<cmd>CellularAutomaton make_it_rain<CR>",
                    "Make it rain...",
                },
                g = {
                    "<cmd>CellularAutomaton game_of_life<CR>",
                    "Game of life...",
                },
            },
        })
    end,
}
