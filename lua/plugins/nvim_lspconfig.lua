return {
    -- add pyright and marksman to lspconfig
    {
        "neovim/nvim-lspconfig",

        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- these lsp will be automatically installed with mason and loaded with lspconfig
                pyright = {},
                r_language_server = {},
                julials = {},
                marksman = {
                    filetypes = { "markdown", "quarto" },
                    root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
                },
            },
        },
    },
}
