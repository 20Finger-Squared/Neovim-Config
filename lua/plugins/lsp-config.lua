return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls" },
                automatic_installation = true,
            })
        end,
    },
    {
        "neovim/nvim-lspconfig",
        dependencies = { "saghen/blink.cmp" },
        -- example using `opts` for defining servers
        opts = {
            servers = {
                lua_ls = {},
                html = {}, -- Fixed
                cssls = {
                    settings = {
                        css = {  },
                        scss = { validate = true },
                        less = { validate = true },
                    },
                },
                quick_lint_js = {},
                ts_ls = {}, -- Fixed
                basedpyright = {
                    analysis = {
                        autoImportCompletions = true,
                        inlayHints = {
                            variableTypes = true,
                            functionReturnTypes = true,
                            callArgumentNames = true,
                        },
                    },
                },

            },
        },

        config = function(_, opts)
            local lspconfig = require("lspconfig")
            for server, config in pairs(opts.servers) do
                config.capabilities = require("blink.cmp").get_lsp_capabilities(config.capabilities)
                lspconfig[server].setup(config)
            end
        end,
    },
    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extentions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
    { "mfussenegger/nvim-lint" }
}
