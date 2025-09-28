vim.g.mapleader = "<space>"
vim.o.number = true


if vim.g.neovide then
  require("config.neovide")
end

if vim.g.vscode then
  require("config.vsc")
end

if vim.loop.os_uname().sysname == "Windows_NT" then
  require("os.win")
elseif vim.loop.os_uname().sysname == "Linux" then
  require("os.linux")
end

-- load plugins
