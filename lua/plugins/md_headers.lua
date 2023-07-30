return {
    "AntonVanAssche/md-headers.nvim",

    lazy = false,

    dependencies = {
        "nvim-lua/plenary.nvim",
    },

    keys = {
        {
            "<leader>mdh",
            "<cmd>MarkdownHeaders<CR>",
            desc = "Show all markdown headers",
        },

        {
            "<leader>mdc",
            "<cmd>MarkdownHeadersClosest<CR>",
            desc = "Show current md header in context",
        },
    },

    config = function()
        require("md-headers").setup()
    end,
}
