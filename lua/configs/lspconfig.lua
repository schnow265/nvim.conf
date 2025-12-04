require("nvchad.configs.lspconfig").defaults()

-- local servers = { "html", "cssls", "elixirls" }
-- vim.lsp.enable(servers)


local servers = {
  elixirls = {},
  lua_ls = {},
  csharp_ls = {},
  clangd = {},
  ruff = {},
  systemd_ls = {},
  ty = {},
}

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end


-- read :h vim.lsp.config for changing options of lsp servers
