local terminal = require("toggleterm")

terminal.setup({
    size = 20,
    open_mapping = [[<C-t>]],
    hide_numbers = true,
    shade_filetypes = {},
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    persist_size = true,
    direction = "float",
    lose_on_exit = true,
    float_opts = {
        border = "curved",
        width = 145,
        height = 35,
    }
})
