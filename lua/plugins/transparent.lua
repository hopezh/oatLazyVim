return {
    "xiyaowong/transparent.nvim",

    lazy = false,

    keys = {
        {
            "<leader>zt",
            "<cmd>TransparentToggle<cr>",
            desc = "Toggle transparent",
        },
    },

    opts = {
        extra_groups = {
            "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
            "NvimTreeNormal", -- NvimTree
        },
    },

    -- config = function()
    --     require("transparent").setup({
    --         --
    --     })
    -- end,
}
