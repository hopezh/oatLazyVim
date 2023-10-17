return {
    {
        "neovim/nvim-lspconfig",

        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- these lsp will be automatically installed with mason and loaded with lspconfig
                pyright = {},
                -- r_language_server = {},
                -- julials = {},
                marksman = {
                    -- also needs:
                    -- $home/.config/marksman/config.toml :
                    -- [core]
                    -- markdown.file_extensions = ["md", "markdown", "qmd"]
                    filetypes = { "markdown", "quarto" },
                    root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
                },
                mojo = {},
            },
        },
    },
}
