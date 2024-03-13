return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
        "3rd/image.nvim",
        {
            's1n7ax/nvim-window-picker',
            version = '2.*',
            config = function()
                require 'window-picker'.setup({
                    filter_rules = {
                        include_current_win = false,
                        autoselect_one = true,
                        -- filter using buffer options
                        bo = {
                            -- if the file type is one of following, the window will be ignored
                            filetype = { 'neo-tree', "neo-tree-popup", "notify" },
                            -- if the buffer type is one of following, the window will be ignored
                            buftype = { 'terminal', "quickfix" },
                        },
                    },
                })
            end,
        },
    },

    opts = {

        close_if_last_window = true,

        filesystem = {
            window = {
                mappings = {
                    ["o"] = "system_open",
                },
            },
            commands = {
                system_open = function(state)
                    local node = state.tree:get_node()
                    local path = node:get_id()
                    -- Linux: open file in default application
                    vim.fn.jobstart({ "xdg-open", path }, { detach = true })
                end,
            },
        },
        event_handlers = {

            {
                event = "file_opened",
                handler = function(file_path)
                    -- auto close
                    -- vimc.cmd("Neotree close")
                    -- OR
                    require("neo-tree.command").execute({ action = "close" })
                end,
            },

        },
        window = {
            mappings = {
                ['e'] = function() vim.api.nvim_exec('Neotree focus filesystem left', true) end,
                ['b'] = function() vim.api.nvim_exec('Neotree focus buffers left', true) end,
                ['g'] = function() vim.api.nvim_exec('Neotree focus git_status left', true) end,
            },
        },
    },
}

