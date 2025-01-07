return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:mason-org/mason-registry",
        "github:crashdummyy/mason-registry",
      },
      ensure_installed = {
        "csharp-language-server",
        "clang-format",
        "clangd",
        "cmakelang",
        "cmakelint",
        "codelldb",
        "gitlab-ci-ls",
        "gitleaks",
        "gitlint",
        "lua-language-server",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
        "bacon",
        "rust-analyzer",
        "csharpier",
        "roslyn",
        "markdownlint",
        "netcoredbg",
        "sonarlint-language-server",
      },
    },
  },
}
