if vim.loop.os_uname().sysname == "Windows_NT" then
  require("os.win")
elseif vim.loop.os_uname().sysname == "Linux" then
  require("os.linux")
end

vim.g.mapleader = "<space>"
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.o.number = true

if vim.g.neovide then
  require("config.neovide")
end
