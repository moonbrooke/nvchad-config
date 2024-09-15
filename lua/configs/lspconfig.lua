-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = { "html", "cssls", "ts_ls", "gopls", "tailwindcss", "phpactor", "vuels", "htmx" }
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
    lspconfig[lsp].setup {
        on_attach = nvlsp.on_attach,
        on_init = nvlsp.on_init,
        capabilities = nvlsp.capabilities,
    }
end

-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }

-- Golang Setup
lspconfig.gopls.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    cmd = { "gopls" },
    filetypes = { "go", "gomod", "gotmpl", "gowork" },
    root_dir = lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
}

-- PHP
lspconfig.phpactor.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
    root_dir = lspconfig.util.root_pattern("composer.json", ".git"),
}

-- Vue
lspconfig.vuels.setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
    cmd = { "vuels" },
    filetypes = { "vue" },
    init_options ={
        config = {
            css = {},
            emmet = {},
            html = {
                suggest = {}
            },
            javascript = {
                format = {}
            },
            stylusSupremacy = {},
            typescript = {
                format = {}
            },
            vetur = {
                completion = {
                    autoImport = false,
                    tagCasing = "kebab",
                    useScaffoldSnippets = false
                },
                format = {
                    defaultFormatter = {
                        js = "none",
                        ts = "none"
                    },
                    defaultFormatterOptions = {},
                    scriptInitialIndent = false,
                    styleInitialIndent = false
                },
                useWorkspaceDependencies = false,
                validation = {
                    script = true,
                    style = true,
                    template = true
                }
            }
        }
    }, 
    root_dir = lspconfig.util.root_pattern("package.json", "vue.config.js"),
}


