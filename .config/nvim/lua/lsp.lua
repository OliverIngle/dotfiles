require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})

require("mason-lspconfig").setup {
    ensure_installed = { "lua_ls", "rust_analyzer", "pyright", "tsserver" },
}

require("mason-lspconfig").setup_handlers {
    function (server_name)
        require("lspconfig")[server_name].setup {}
    end,
}



-- require('lspconfig')['pyright'].setup{}
-- require('lspconfig')['tsserver'].setup{}
-- -- require('lspconfig')['sumneko_lua'].setup{}
-- require('lspconfig').rust_analyzer.setup({
--     settings = {
--         ["rust-analyzer"] = {
--             imports = {
--                 granularity = {
--                     group = "module",
--                 },
--                 prefix = "self",
--             },
--             cargo = {
--                 buildScripts = {
--                     enable = true,
--                 },
--             },
--             procMacro = {
--                 enable = true
--             },
--         }
--     }
-- })

-- require('lspconfig').gopls.setup {
--     cmd = {"gopls", "serve"},
--     filetypes = {"go", "gomod"},
--     root_dir = require('lspconfig/util').root_pattern("go.work", "go.mod", ".git"),
--     settings = {
--         gopls = {
--             analyses = {
--                 unusedparams = true,
--             },
--             staticcheck = true,
--         },
--     },
-- }
