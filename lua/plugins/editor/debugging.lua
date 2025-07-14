return {
  {
    "rcarriga/nvim-dap-ui",
    dependencies = {
      "mfussenegger/nvim-dap",
      "nvim-neotest/nvim-nio"
    },
    config = function()
      local dap = require("dap")
      local dapui = require("dapui")
      dapui.setup() -- Call this first to setup dap-ui with default or custom options

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
    end,
    keys = {
      { "<leader>du", function() require("dapui").toggle() end, desc = "DAPUI: Toggle UI" },
      { "<leader>dd", function() require("dapui").open() end,   desc = "DAPUI: Open UI" },
      { "<leader>de", function() require("dapui").eval() end,   desc = "DAPUI: Evaluate" },
    }
  },
  {
    "mfussenegger/nvim-dap",
    keys = {
      { "<F5>",         function() require("dap").continue() end,                                                    desc = "DAP: Continue" },
      { "<F8>",         function() require("dap").terminate() end,                                                   desc = "DAP: Terminate Session" },
      { "<F9>",         function() require("dap").toggle_breakpoint() end,                                           desc = "DAP: Toggle Breakpoint" },
      { "<F10>",        function() require("dap").step_over() end,                                                   desc = "DAP: Step Over" },
      { "<F11>",        function() require("dap").step_into() end,                                                   desc = "DAP: Step Into" },
      { "<F12>",        function() require("dap").step_out() end,                                                    desc = "DAP: Step Out" },
      { "<leader><F9>", function() require("dap").set_breakpoint(vim.fn.input("Breakpoint condition: ")) end,        desc = "DAP: Set Conditional Breakpoint" },
      { "<leader>lp",   function() require("dap").set_breakpoint(nil, nil, vim.fn.input("Log point message: ")) end, desc = "DAP: Set Log Point" },
    },
  },
}
