return {{
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "csharp-language-server",
        "clang-format",
        "clangd",
        "cmakelang",
        "cmakelint",
        "codelldb",
        "lua-language-server",
        "ruff",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  }}