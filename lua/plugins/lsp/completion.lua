return {{
    "hrsh7th/nvim-cmp",
    dependencies = { 
      "hrsh7th/cmp-emoji",
      "hrsh7th/cmp-nvim-lsp",
      "davidsierradz/cmp-conventionalcommits",
      "hrsh7th/cmp-path",  
    },
    ---@param opts cmp.ConfigSchema
    opts = function(_, opts)
      table.insert(opts.sources, {
        name = "emoji",
      })
      table.insert(opts.sources, {
        name = "path", 
      })
      table.insert(opts.sources, {
        name = "conventionalcommits",
      })
      table.insert(opts.sources, {
        name = "nvim_lsp",
      })
    end,
  }}