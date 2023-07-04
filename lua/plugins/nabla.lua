return {
    "jbyuki/nabla.nvim",

    keys = {
        {
            "<leader>np",
            "<cmd>lua require('nabla').popup({border='rounded'})<CR>",
            desc = "preview math with nabla",
        },
    },
}
