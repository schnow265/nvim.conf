return {
    "bassamsdata/namu.nvim",
    config = function()
        require("namu").setup({
            -- Enable the modules you want
            namu_symbols = {
                enable = true,
                options = {},          -- here you can configure namu
            },
            ui_select = { enable = true }, -- vim.ui.select() wrapper
        })
    end,
    keys = {
        { "<leader>ss", "<cmd>Namu symbols<cr>",   desc = "Jump to LSP symbol",      silent = true },
        { "<leader>sw", "<cmd>Namu workspace<cr>", desc = "LSP Symbols - Workspace", silent = true }
    }
}
