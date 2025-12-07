local M = {}

local function canRequire(moduleName)
    local success, _ = pcall(require, moduleName)
    return success
end

function split_string(str)
    local result = {}
    for word in string.gmatch(str, "%S+") do
        table.insert(result, word)
    end
    return result
end

local executables = {
    "git", "cargo", "npm",
}

local programming_languages = {
    elixir = {
        "iex",
        "mix",
        "elixir"
    }
}

local version_commands = {
    "elixir --version",
    "git --version",
}


M.check = function()
    vim.health.start("Required Executables")

    for _, executable in ipairs(executables) do
        if vim.fn.executable(executable) == 1 then
            vim.health.ok(string.format("'%s' is installed", executable))
        else
            vim.health.error(string.format("'%s' is not installed", executable))
        end
    end


    vim.health.start("Local files")

    local headerFile = vim.fn.stdpath('config') .. '/header.txt'
    local f = io.open(headerFile, "r")

    if not f then
        vim.health.error("The file 'header.txt' does not exist in the config root, or neovim failed to open it.")
    else
        vim.health.ok("'header.txt' is avaliable and readable.")
    end


    vim.health.start("require-able config options")

    if canRequire("config.serverconfig") then
        vim.health.ok("serverconfig could be required")

        local lsp_configs = require("config.serverconfig").lspconfig

        local count = 0
        for _, _ in pairs(lsp_configs) do
            count = count + 1
        end

        vim.health.info(string.format('Configured %d LSP servers.', count))
    else
        vim.health.error("could not require 'config.serverconfig'!")
    end

    --[[vim.health.start("Version checks")

    for _, command in ipairs(version_commands) do
        local output_obj = vim.system(split_string(command), { text = true }):wait()

        if output_obj.wait.code == 0 then
            vim.health.ok(output_obj.wait.stdout)
        else
            vim.health.error(string.format("Failed runnig command '%s':\n\nSTDERR:\n%s\n\nSTDOUT:\n%s", command,
                output_obj.wait.stderr, output_obj.wait.stdout))
        end
    end--]]
end

return M
