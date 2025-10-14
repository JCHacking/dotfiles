-- Indent Bars

return {
    "lukas-reineke/indent-blankline.nvim",

    event = { "BufReadPre", "BufNewFile" },

    main = "ibl",
    opts = {
        scope = {
            enabled = false,
        },
    },
    config = function(_, opts)
        local hooks = require "ibl.hooks"
        hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
        require("ibl").setup(opts)
    end,
}

