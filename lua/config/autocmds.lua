-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd({ "VimLeavePre" }, {
  callback = function()
    if vim.g.project_root ~= nil then
      require("neoproj").save_session()
    end
  end,
})
