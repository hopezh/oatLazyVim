return {
    -- add pyright and marksman to lspconfig
    {
        "neovim/nvim-lspconfig",

        ---@class PluginLspOpts
        opts = {
            ---@type lspconfig.options
            servers = {
                -- pyright will be automatically installed with mason and loaded with lspconfig
                pyright = {},
                marksman = {
                    filetypes = { "markdown", "quarto" },
                },
            },
        },
    },
}
