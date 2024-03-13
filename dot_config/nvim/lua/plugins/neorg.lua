return{
    'nvim-neorg/neorg',
    ft = 'norg',
    opts = {
        load = {
            ["core.defaults"] = {}, -- Loads default behaviour
            ["core.concealer"] = {
                config = {
                    folds = true,
                    icons = {
                        code_block = {
                            conceal = true,
                            width = "content",
                        },
                    },
                },
            }, -- Adds pretty icons to your documents
            ["core.dirman"] = { -- Manages Neorg workspaces
                config = {
                    workspaces = {
                        notes = "~/notes",
                    },
                    ["core.presenter"] = {},
                },
            },
            ["core.syntax"] = {},
        },
    },
}

