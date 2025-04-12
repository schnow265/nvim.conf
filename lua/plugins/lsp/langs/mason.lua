return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:crashdummyy/mason-registry",
        "github:mason-org/mason-registry",
      },
      ensure_installed = {
        "bacon",
        "csharp-language-server",
        "csharpier",
        "gitleaks",
        "gitlint",
        "lua-language-server",
        "markdownlint",
        "netcoredbg",
        "roslyn",
        "ruff",
        "rust-analyzer",
        "shellcheck",
        "shfmt",
        "sonarlint-language-server",
        "stylua",
      },
      ui = {
        icons = {
            package_installed = "",
            package_pending = "",
            package_uninstalled = ""
        }
      }
    },
  },
}
