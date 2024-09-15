local options = {
    formatters_by_ft = {
        lua = { "stylua" },
        css = { { "prettierd", "prettier" } },
        scss = { { "prettierd", "prettier" } },
        -- html = { "htmlbeautifier" },
        html = { "prettier" },
        javascript = { { "prettierd", "prettier" } },
        typescript = { { "prettierd", "prettier" } },
        javascriptreact = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        graphql = { { "prettierd", "prettier" } },
        markdown = { { "prettierd", "prettier" } },
        svelte = { { "prettierd", "prettier" } },
        py = { "black" },
        go = { { "gofumpt", "goimports-reviser", "golines" } },
        php = { "pretty-php" },
    },

    formatters = {
        ["goimports-reviser"] = {
            prepend_args = { "-rm-unused" },
        },
        golines = {
            prepend_args = { "--max-len=90" },
        },
    },

    format_on_save = {
        -- These options will be passed to conform.format()
        timeout_ms = 500,
        lsp_format = "fallback",
    },

    -- Auto Format on Save
    -- vim.api.nvim_create_autocmd("BufWritePre", {
    --     callback = function(args)
    --         require("conform").format { bufnr = args.buf }
    --     end,
    -- }),
}

return options
