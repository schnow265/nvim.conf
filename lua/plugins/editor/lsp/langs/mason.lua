return {
  {
    "mason-org/mason.nvim",
    opts = {
      registries = {
        "github:crashdummyy/mason-registry",
        "github:mason-org/mason-registry",
      },
      ensure_installed = {
        "csharpier",
        "gitlint",
        "harper-ls",
        "netcoredbg",
        "omnisharp",
        "roslyn",
        "ruff",
        "shellcheck",
        "sonarlint-language-server",
      },
      ui = {
        icons = {
          package_installed = "",
          package_pending = "",
          package_uninstalled = "",
        },
      },
      max_concurrent_installers = 10,
      pip = {
        upgrade_pip = true,
        install_args = {
          "--compile",
          "--no-warn-script-location",
        },
      },
    },
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "mason-org/mason.nvim",
      -- "neovim/nvim-lspconfig",
    },
    opts = {
      automatic_installation = true,
    },
  },
}
