return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true,
      },
    },
  },
  keys = {
    {"<leader>fN", "<cmd>Neotree focus<cr>"}
  }
}
