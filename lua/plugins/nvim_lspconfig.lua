return {
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
                -- marksman = {
                --     -- also needs:
                --     -- $home/.config/marksman/config.toml :
                --     -- [core]
                --     -- markdown.file_extensions = ["md", "markdown", "qmd"]
                --     filetypes = { "markdown", "quarto" },
                --     root_dir = require("lspconfig.util").root_pattern(".git", ".marksman.toml", "_quarto.yml"),
                -- },
                mojo = {},
            },

            setup = {
                marksman = function(_, opts)
                    local lspconfig = require("lspconfig")
                    local cmp_nvim_lsp = require("cmp_nvim_lsp")
                    local util = require("lspconfig.util")

                    local on_attach_qmd = function(client, bufnr)
                        local function buf_set_keymap(...)
                            vim.api.nvim_buf_set_keymap(bufnr, ...)
                        end
                        local function buf_set_option(...)
                            vim.api.nvim_buf_set_option(bufnr, ...)
                        end

                        buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
                        local opts = { noremap = true, silent = true }

                        buf_set_keymap("n", "gh", "<cmd>lua vim.lsp.buf.signature_help()<CR>", opts)
                        buf_set_keymap("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)
                        buf_set_keymap("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<CR>", opts)
                        buf_set_keymap("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<CR>", opts)
                        buf_set_keymap("n", "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)
                        client.server_capabilities.document_formatting = true
                    end

                    local capabilities = vim.lsp.protocol.make_client_capabilities()
                    capabilities = cmp_nvim_lsp.default_capabilities(capabilities)
                    capabilities.textDocument.completion.completionItem.snippetSupport = true

                    -- also needs:
                    -- $home/.config/marksman/config.toml :
                    -- [core]
                    -- markdown.file_extensions = ["md", "markdown", "qmd"]
                    lspconfig.marksman.setup({
                        on_attach = on_attach_qmd,
                        capabilities = capabilities,
                        filetypes = { "markdown", "quarto" },
                        root_dir = util.root_pattern(".git", ".marksman.toml", "_quarto.yml"),
                    })

                    return true
                end,
            },
        },
    },
}
