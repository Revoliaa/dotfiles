local config = require("nvim-treesitter.configs")

config.setup {
    ensure_installed = "all",
    sync_install= false,
    hightlight = {
        enable = true,
        additional_vim_regex_highlighting = true,
    },
    indent = {
        enable = true
    },
    rainbow = {
        enable = true,
        extended_mode = true,
        max_file_lines = nil
    },
    context_commentstring = {
        enable = true
    }
}
