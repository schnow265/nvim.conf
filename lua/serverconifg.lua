local M = {}

M.getKeys = function (tbl)
    local keys = {}
    for k, _ in pairs(tbl) do
        table.insert(keys, k)
    end
    return keys
end


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
    ty = {}
}

M.mason = M.getKeys(M.lspconfig)

return M
