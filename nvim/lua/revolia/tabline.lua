local tabline = require("barbar")

tabline.setup({
    animation = true,
    clickable = false,
    sidebar_filetypes = {
        NvimTree = true
    },
    no_name_title = "No Name",
    insert_at_end = true,
    exclude_ft = { "startup" }
})
