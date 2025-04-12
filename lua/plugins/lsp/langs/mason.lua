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
        "csharpier",
        "gitleaks",
        "gitlint",
        "harper-ls",
        "lua-language-server",
        "markdownlint",
        "netcoredbg",
        "omnisharp",
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
          package_uninstalled = "",
        },
      },
      max_concurrent_installers = 1,
      pip = {
        upgrade_pip = true,
        install_args = {
          "--compile",
          "--no-warn-script-location",
          "--progress-bar",
          "raw",
        },
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      "williamboman/mason.nvim",
      "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_installation = true,
    },
  },
}
