return {
    "neovim/nvim-lspconfig",

    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        {
            "ray-x/lsp_signature.nvim",
            event = "LspAttach",
            opts = {},
        },
    },

    config = function()
        local capabilities = require("cmp_nvim_lsp").default_capabilities()

        vim.lsp.config("lua_ls", {
            capabilities = capabilities,

            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim" },
                    },
                },
            },
        })

        vim.lsp.config("pyright", {
            capabilities = capabilities,
        })

        vim.lsp.config("clangd", {
            capabilities = capabilities,
        })

        vim.lsp.config("html", {
            capabilities = capabilities,
        })

        vim.lsp.config("cssls", {
            capabilities = capabilities,
        })

        vim.lsp.config("ts_ls", {
            capabilities = capabilities,
        })

        vim.lsp.enable("lua_ls")
        vim.lsp.enable("pyright")
        vim.lsp.enable("clangd")
        vim.lsp.enable("html")
        vim.lsp.enable("cssls")
        vim.lsp.enable("ts_ls")
    end,

    vim.keymap.set("n", "<leader>r", vim.diagnostic.open_float, {
        desc = "Show diagnostic",
    })
}
