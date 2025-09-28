-- Recursively load all plugin modules from lua/plugins (including subfolders) and register with vim.pack
local plugin_dir = vim.fn.stdpath("config") .. "/lua/plugins"
local plugin_files = vim.fn.globpath(plugin_dir, "**/*.lua", false, true)

local plugins = {}

for _, file in ipairs(plugin_files) do
  -- Find the path relative to lua/, then convert to module name
  -- E.g., /home/user/.config/nvim/lua/plugins/foo/bar.lua -> plugins.foo.bar
  local rel = file:match("lua/(.+)%.lua$")
  if rel then
    local modname = rel:gsub("/", ".")
    local ok, mod = pcall(require, modname)
    if ok and type(mod) == "table" then
      table.insert(plugins, mod)
    else
      vim.notify("Failed to load plugin module: " .. modname, vim.log.levels.ERROR)
    end
  end
end

for _, spec in ipairs(plugins) do
  require(spec)
end
