return {
  "mfussenegger/nvim-dap",
  dependencies = {
    "rcarriga/nvim-dap-ui",
    "nvim-neotest/nvim-nio",
    "jay-babu/mason-nvim-dap.nvim",
  },

  config = function()
    local dap = require("dap")
    local dapui = require("dapui")

    require("mason-nvim-dap").setup({
      ensure_installed = { "python", "js", "cppdbg", "codelldb", "javadbg", "javatest" },
      handlers = {
        function(config)
          require('mason-nvim-dap').default_setup(config)
        end,
      },
    })


    dapui.setup()
    dap.listeners.before.attach.dapui_config = function() dapui.open() end
    dap.listeners.before.event_initialized.dapui_config = function() dapui.open() end
    dap.listeners.before.event_terminated.dapui_config = function() dapui.close() end
    dap.listeners.before.event_exited.dapui_config = function() dapui.close() end

    dap.configurations.cpp = {
      {
        name = "Launch file dari folder bin",
        type = "codelldb",
        request = "launch",
        program = function()
          local target = vim.fn.expand("%:p:h") .. "/bin/" .. vim.fn.expand("%:t:r")
          if vim.fn.has("win32") == 1 then
            target = target .. ".exe"
          end
          return target
        end,
        cwd = "${workspaceFolder}",
        stopOnEntry = false,
      },
    }
    dap.configurations.c = dap.configurations.cpp

    dap.configurations.java = {
      {
        type = 'java',
        request = 'launch',
        name = "Debug (Launch) - Current File Java",
        mainClass = function()
          return vim.fn.expand("%:t:r")
        end,
        classPaths = function()
          return { vim.fn.expand("%:p:h") .. "/bin" }
        end,
      },
    }

    vim.keymap.set("n", "<leader>dc", dap.continue, { desc = "Debug: Start/Continue" })       -- Space d c
    vim.keymap.set("n", "<leader>do", dap.step_over, { desc = "Debug: Step Over" })          -- Space d o
    vim.keymap.set("n", "<leader>di", dap.step_into, { desc = "Debug: Step Into" })          -- Space d i
    vim.keymap.set("n", "<leader>dx", dap.step_out, { desc = "Debug: Step Out" })            -- Space d x
    vim.keymap.set("n", "<leader>dq", dap.terminate, { desc = "Debug: Stop/Quit" })          -- Space d q
    vim.keymap.set("n", "<leader>b", dap.toggle_breakpoint, { desc = "Debug: Toggle Breakpoint" }) -- Space d
    vim.keymap.set("n", "<leader>du", dapui.toggle, { desc = "Debug: Toggle UI Manually" })        -- Space d u
  end,
}
