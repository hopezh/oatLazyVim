return {
    "jose-elias-alvarez/null-ls.nvim",

    event = { "BufReadPre", "BufNewFile" },

    dependencies = { "mason.nvim" },

    opts = function()
        local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
        local nls = require("null-ls")

        return {
            root_dir = require("null-ls.utils").root_pattern(".null-ls-root", ".neoconf.json", "Makefile", ".git"),

            sources = {
                nls.builtins.formatting.black,
                nls.builtins.diagnostics.mypy,
                nls.builtins.diagnostics.ruff,
                nls.builtins.formatting.fish_indent,
                nls.builtins.diagnostics.fish,
                nls.builtins.formatting.stylua,
                nls.builtins.formatting.shfmt,
                -- nls.builtins.diagnostics.flake8,
                -- nls.builtins.diagnostics.eslint, -- got error:"command eslint is not executable (make sure it's installed and on your $PATH)"
            },

            -- on_attach = function(client, bufnr)
            --     if client.supports_method("textDocument/formatting") then
            --         vim.api.nvim_clear_autocmds({
            --             group = augroup,
            --             buffer = bufnr,
            --         })
            --         vim.api.nvim_create_autocmd("BufWritePre", {
            --             group = augroup,
            --             buffer = bufnr,
            --             callback = function()
            --                 vim.lsp.buf.format({ bufnr = bufnr })
            --             end,
            --         })
            --     end
            -- end,
        }
    end,
}
