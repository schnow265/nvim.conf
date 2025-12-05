return {{
    "williamboman/mason.nvim",
    opts = function(_, opts)
        local serverconfig = require("serverconifg")
        opts.ensure_installed = serverconfig.mason
    end
}}
