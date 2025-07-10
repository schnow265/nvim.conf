return { {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
  },
  ---@param opts cmp.ConfigSchema
  opts = function(_, opts)
    local cmp = require("cmp")

    -- Add tab mapping for confirmation and Ctrl-N/P for navigation
    opts.mapping = vim.tbl_extend("force", opts.mapping or {}, {
      ["<Tab>"] = cmp.mapping.confirm({ select = true }),
      ["<C-n>"] = cmp.mapping.select_next_item(),
      ["<C-p>"] = cmp.mapping.select_prev_item(),
    })

    table.insert(opts.sources, {
      name = "nvim_lsp",
    })
    table.insert(opts.sources, {
      name = "path",
    })
  end,
} }
