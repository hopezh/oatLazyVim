return {
    -- need nvim >= 0.10 to support inlay_hints
    {
        "neovim/nvim-lspconfig",
        opts = {
            inlay_hints = { enabled = true },
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
