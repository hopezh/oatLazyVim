return {
    { -- indent-blankline -------------------------------------------------------
        "lukas-reineke/indent-blankline.nvim",

        -- method 1 to change some options
        opts = {
            char = "▏", -- indent symbol
            -- char = "│",

            show_current_context = true, -- highlight the context
            show_current_context_start = false,

            show_trailing_blankline_indent = false,
        },

        -- method 2
        -- config = function()
        --     require("indent_blankline").setup({
        --         char = "▏", -- indent symbol
        --         -- char = "│",
        --
        --         show_current_context = true, -- highlight the context
        --         show_current_context_start = false,
        --
        --         show_trailing_blankline_indent = false,
        --     })
        -- end,
    },
}
