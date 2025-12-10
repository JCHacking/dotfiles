-- Manage Remove Buffers

return {
    "nvim-mini/mini.bufremove",
    version = false,

    keys = {
        {
            "<leader>q",
            function()
                require("mini.bufremove").delete(0)
            end,
            mode = "n",
            desc = "Close current buffer",
        },
    },
}
