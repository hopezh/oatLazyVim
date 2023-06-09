return {
    {
        "quarto-dev/quarto-nvim",

        dependencies = {
            "jmbuhr/otter.nvim",
            "neovim/nvim-lspconfig",
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
                    languages = { "r", "python", "julia", "bash" },
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
