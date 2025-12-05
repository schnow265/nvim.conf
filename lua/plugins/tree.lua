return {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
        filesystem = {
            filtered_items = {
                visible = true
            }
        }
    },
    dependencies = {"nvim-lua/plenary.nvim", "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons"},
    keys = {{"<leader>fN", "<cmd>Neotree focus<cr>"}}
}
