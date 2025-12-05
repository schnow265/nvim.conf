require("nvchad.configs.lspconfig").defaults()

local config_module = require("serverconifg")

local servers = config_module.lspconfig

for name, opts in pairs(servers) do
  vim.lsp.config(name, opts)
  vim.lsp.enable(name)
end
