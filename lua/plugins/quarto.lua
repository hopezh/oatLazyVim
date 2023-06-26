return {
    {
        "quarto-dev/quarto-nvim",

        dependencies = {
            "hrsh7th/nvim-cmp",
            "neovim/nvim-lspconfig",
            {
                "jmbuhr/otter.nvim",
                config = function()
                    require("otter.config").setup({
                        lsp = {
                            hover = {
                                border = require("misc.style").border,
                            },
                        },
                    })
                end,
            },
        },

        keys = {
            {
                "<leader>qp",
                "<CMD>QuartoPreview<CR>",
                desc = "Quarto Preview",
            },
        },

        config = function()
            require("quarto").setup({
                debug = false,

                closePreviewOnExit = true,

                lspFeatures = {
                    enabled = true,
                    languages = { "r", "python", "julia", "bash", "lua" },
                    chunks = "curly", -- 'curly' or 'all'
                    diagnostics = {
                        enabled = true,
                        triggers = { "BufWritePost" },
                    },
                    completion = {
                        enabled = true,
                    },
                },
            })
        end,
    },

    -- send code from qmd doc to terminal
    { "jpalardy/vim-slime" },
    { "ekickx/clipboard-image.nvim" },
}
