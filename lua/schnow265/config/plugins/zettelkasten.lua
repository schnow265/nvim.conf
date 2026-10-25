return {
    "zk-org/zk-nvim",
    name = "zk",
    dependencies = {
        'nvim-telescope/telescope.nvim'
    },
    opts = {
        picker = "telescope",
        lsp = {
            -- `config` is passed to `vim.lsp.start(config)`
            config = {
                name = "zk",
                cmd = { "zk", "lsp" },
                filetypes = { "markdown" },
            },

            -- automatically attach buffers in a zk notebook that match the given filetypes
            auto_attach = {
                enabled = true,
            },
        },

        tags = {
            multi_select_strategy = "OR",
        }
    },
}
