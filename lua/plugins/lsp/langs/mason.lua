return {
  {
    "williamboman/mason.nvim",
    opts = {
      registries = {
        "github:crashdummyy/mason-registry",
        "github:mason-org/mason-registry",
      },
      ensure_installed = {
        "csharpier",
        "harper-ls",
        "lua-language-server",
        "netcoredbg",
        "omnisharp",
        "roslyn",
        "ruff",
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
