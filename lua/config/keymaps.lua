-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

map("n", "<leader>fN", function()
  vim.cmd("Neotree focus")
end)

map("n", "<F2>", vim.cmd.UndotreeToggle)

-- Import dap and dap-ui
local dap = require("dap")
local dapui = require("dapui")

-- Keybindings for debugging (F keys)
vim.keymap.set("n", "<F5>", function()
  dap.continue() -- Start or continue debugging
end, { desc = "Debug: Start/Continue" })

vim.keymap.set("n", "<F10>", function()
  dap.step_over() -- Step over the current line
end, { desc = "Debug: Step Over" })

vim.keymap.set("n", "<F11>", function()
  dap.step_into() -- Step into a function
end, { desc = "Debug: Step Into" })

vim.keymap.set("n", "<F12>", function()
  dap.step_out() -- Step out of the current function
end, { desc = "Debug: Step Out" })

vim.keymap.set("n", "<F9>", function()
  dap.toggle_breakpoint() -- Toggle a breakpoint
end, { desc = "Debug: Toggle Breakpoint" })

vim.keymap.set("n", "<leader><F9>", function()
  dap.set_breakpoint(vim.fn.input("Breakpoint condition: ")) -- Conditional breakpoint
end, { desc = "Debug: Set Conditional Breakpoint" })

vim.keymap.set("n", "<leader>lp", function()
  dap.set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) -- Log point
end, { desc = "Debug: Set Log Point" })

vim.keymap.set("n", "<F8>", function()
  dap.terminate() -- Terminate debugging session
end, { desc = "Debug: Terminate" })

-- Keybindings for dap-ui
vim.keymap.set("n", "<leader>du", function()
  dapui.toggle() -- Toggle the dap-ui windows
end, { desc = "Debug: Toggle UI" })

vim.keymap.set("n", "<leader>de", function()
  dapui.eval() -- Evaluate the variable under the cursor
end, { desc = "Debug: Evaluate" })

-- Automatically open/close dap-ui when debugging starts/ends
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
