return {
    { -- indent-blankline -------------------------------------------------------
        "lukas-reineke/indent-blankline.nvim",

        -- method 1: use "opts{}" to change some options
        opts = {
            -- char = "│",
            char = "▏", -- oat: indent symbol

            show_current_context = true, -- oat: highlight the context
            show_current_context_start = true,
        },

        -- method 2: use "require("pluinName").setup({})" to change some options
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
