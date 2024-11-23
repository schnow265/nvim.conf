return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = { "hrsh7th/cmp-emoji" },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, {
        name = "emoji",
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        pyright = {},
      },
    },
    dependencies = {
      "jose-elias-alvarez/typescript.nvim",
      init = function()
        require("lazyvim.util").lsp.on_attach(function(_, buffer)
                -- stylua: ignore
                vim.keymap.set("n", "<leader>co", "TypescriptOrganizeImports", {
                    buffer = buffer,
                    desc = "Organize Imports"
                })
          vim.keymap.set("n", "<leader>cR", "TypescriptRenameFile", {
            desc = "Rename File",
            buffer = buffer,
          })
        end)
      end,
    },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = { -- "bash",
        -- "html",
        -- "javascript",
        -- "json",
        "lua", -- "markdown",
        -- "markdown_inline",
        -- "python",
        -- "query",
        -- "regex",
        -- "tsx",
        -- "typescript",
        -- "vim",
        -- "yaml",
      },
    },
  },
  {
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
  },
}
