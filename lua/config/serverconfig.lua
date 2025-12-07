local M = {}


M.lspconfig = {
    elixirls = {},
    lua_ls = {
        Lua = {
            workspace = {
                -- Make the server aware of Neovim runtime files
                library = vim.api.nvim_get_runtime_file("", true),
            },
            -- Do not send telemetry data containing a randomized but unique identifier
            telemetry = {
                enable = false,
            },
        }
    },
    csharp_ls = {},
    clangd = {},
    ruff = {},
    systemd_ls = {},
    ty = {},
    bacon_ls = {},
    codebook = {},
    docker_language_server = {},
    asm_lsp = {},
    zk = {
        filetyles = {
            "markdown",
            "text"
        }
    },
    zls = {},
    yamlls = {
        yaml = {
            schemas = {
                ["https://json.schemastore.org/github-workflow.json"] = "/.github/workflows/*",
                ["https://gitlab.com/gitlab-org/gitlab-foss/-/raw/master/app/assets/javascripts/editor/schema/ci.json"] = "/.gitlab-ci.y*ml",
            }
        }
    },
}

return M
