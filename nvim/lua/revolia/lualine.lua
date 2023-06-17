local statusline = require("lualine")

statusline.setup({
    options = {
        theme = "auto",
        disabled_filetypes = { "NvimTree", "packer", "startup" }
    }
})
