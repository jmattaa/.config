require("noice").setup({
    views = {
        cmdline_popup = {
            filter_options = {},
            win_options = {
                winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
            },
        },
    },
    cmdline = {
        format = {
            search_down = {
                view = "cmdline",
            },
            search_up = {
                view = "cmdline",
            },
        },
    },
})
