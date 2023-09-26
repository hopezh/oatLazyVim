return {
    -- need nvim >= 0.10 to support inlay_hints
    {
        "neovim/nvim-lspconfig",

        --@class PluginLspOpts
        opts = {
            inlay_hints = { enabled = true },

            ---@type lspconfig.options
            servers = {
                lua_ls = {
                    settings = {
                        lua = {
                            hint = { enabled = true },
                        },
                    },
                },
            },
        },
    },
}
