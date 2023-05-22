return {
    {
        "akinsho/toggleterm.nvim",

        config = true,

        cmd = "ToggleTerm",

        keys = {
            {
                "<F3>",
                "<cmd>ToggleTerm<cr>",
                desc = "Toggle floating terminal",
            },
        },

        opts = {
            open_mapping = [[<F3>]],
            direction = "float", -- float/horizontal
            shade_filetypes = {},
            hide_numbers = true,
            insert_mappings = true,
            terminal_mappings = true,
            start_in_insert = true,
            close_on_exit = true,

            float_opts = {
                border = "curved",
                -- width = 100,
                -- height = 100,
            },
        },
    },
}
