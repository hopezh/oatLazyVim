return {
    {
        "Exafunction/codeium.vim",
        lazy = false,

        keys = {
            {
                "<C-a>",
                function()
                    return vim.fn["codeium#Accept"]()
                end,
                expr = true,
                desc = "confirm selection",
                mode = { "i" },
            },

            {
                -- "<C-j>",
                "<Down>",
                function()
                    return vim.fn["codeium#CycleCompletions"](1)
                end,
                expr = true,
                desc = "next selection",
                mode = { "i" },
            },

            {
                -- "<C-k>",
                "<Up>",
                function()
                    return vim.fn["codeium#CycleCompletions"](-1)
                end,
                expr = true,
                desc = "previous selection",
                mode = { "i" },
            },

            {
                "<C-x>",
                function()
                    return vim.fn["codeium#Clear"]()
                end,
                expr = true,
                desc = "clear selection",
                mode = { "i" },
            },
        },

        -- config = function()
        --     vim.keymap.set("i", "<c-a>", function()
        --         return vim.fn["codeium#Accept"]()
        --     end, { expr = true })
        --
        --     vim.keymap.set("i", "<c-j>", function()
        --         return vim.fn["codeium#CycleCompletions"](1)
        --     end, { expr = true })
        --
        --     vim.keymap.set("i", "<c-l>", function()
        --         return vim.fn["codeium#CycleCompletions"](-1)
        --     end, { expr = true })
        --
        --     vim.keymap.set("i", "<c-x>", function()
        --         return vim.fn["codeium#Clear"]()
        --     end, { expr = true })
        -- end,
    },
}
