return {
    "folke/which-key.nvim",

    -- opts = function()
    --     require("which-key").register({
    --         -- add keymap group for those keybindings not using <leader>
    --         ["z"] = { name = "+fold" },
    --
    --         -- add keymap group and keybindings using <leader>
    --         ["<leader>z"] = {
    --             name = "OatKey",
    --             m = {
    --                 "<cmd>CellularAutomaton make_it_rain<CR>",
    --                 "Make it rain...",
    --             },
    --             g = {
    --                 "<cmd>CellularAutomaton game_of_life<CR>",
    --                 "Game of life...",
    --             },
    --         },
    --     })
    -- end,

    opts = {
        plugins = { spelling = true },

        defaults = {
            mode = { "n", "v" },
            ["g"] = { name = "+goto" },
            ["gz"] = { name = "+surround" },
            ["]"] = { name = "+next" },
            ["["] = { name = "+prev" },
            ["<leader><tab>"] = { name = "+tabs" },
            ["<leader>b"] = { name = "+buffer" },
            ["<leader>c"] = { name = "+code" },
            ["<leader>f"] = { name = "+file/find" },
            ["<leader>g"] = { name = "+git" },
            ["<leader>gh"] = { name = "+hunks" },
            ["<leader>q"] = { name = "+quit/session" },
            ["<leader>s"] = { name = "+search" },
            ["<leader>u"] = { name = "+ui" },
            ["<leader>w"] = { name = "+windows" },
            ["<leader>x"] = { name = "+diagnostics/quickfix" },

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
        },
    },

    config = function(_, opts)
        local wk = require("which-key")
        wk.setup(opts)
        wk.register(opts.defaults)
    end,
}
