return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            dap.adapters.gdb = {
                type = "executable",
                command = "gdb",
                args = { "-i", "dap" }
            }
            dap.configurations.c = {
                {
                    name = "Launch",
                    type = "gdb",
                    request = "launch",
                    program = function()
                        return vim.fn.input('Path to executable: ', vim.fn.getcwd() .. '/', 'file')
                    end,
                    cwd = "${workspaceFolder}",
                    stopAtBeginningOfMainSubprogram = false,
                },
            }

            vim.keymap.set("n", "<Leader>dt", ":DapToggleBreakpoint<CR>")
            vim.keymap.set("n", "<Leader>dc", ":DapContinue<CR>")
            vim.keymap.set("n", "<Leader>dx", ":DapTerminate<CR>")
            vim.keymap.set("n", "<Leader>do", ":DapStepOver<CR>")

        end
    },

    {
        "rcarriga/nvim-dap-ui",
        dependencies =

        {
            "mfussenegger/nvim-dap",
            "nvim-neotest/nvim-nio",
        },
        config = function()

            require("dapui").setup()
            local dap, dapui = require("dap"), require("dapui")


            dap.listeners.before.attach.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.launch.dapui_config = function()
                dapui.open()
            end
            dap.listeners.before.event_terminated.dapui_config = function()
                dapui.close()
            end

            dap.listeners.before.event_exited.dapui_config = function()
                dapui.close()
            end
        end
    },
}
