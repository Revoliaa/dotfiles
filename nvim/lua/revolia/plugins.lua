local packer = require("packer")

packer.init({
    display = {
        open_fn = function()
            return require("packer.util").float({ border = "rounded" })
        end
    }
})

return packer.startup(function(use)
	-- Auto updating packer
    use "wbthomason/packer.nvim"
    -- Colorscheme
    use { "catppuccin/nvim", as = "catppuccin" }
    -- Auto closing parenthesis, quotes etc.
    use "jiangmiao/auto-pairs"
    -- Code completition
    use "hrsh7th/nvim-cmp"
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use "hrsh7th/cmp-nvim-lsp"
    use "saadparwaiz1/cmp_luasnip"
    use "L3MON4D3/LuaSnip"
    use "rafamadriz/friendly-snippets"
    -- Language Server Protocol (LSP)
    use "williamboman/mason.nvim"
    use "williamboman/mason-lspconfig.nvim"
    use "neovim/nvim-lspconfig"
    -- Treesitter (Syntax highlighting)
    use {
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate"
    }
    use "mrjones2014/nvim-ts-rainbow"
    use "JoosepAlviste/nvim-ts-context-commentstring"
    -- Commenting
    use {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup({
            pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook()
            })
        end
    }
    -- Git
    use "lewis6991/gitsigns.nvim"
    -- File explorer
    use "nvim-tree/nvim-tree.lua"
    -- File icons
    use "nvim-tree/nvim-web-devicons"
    -- Tabline
    use "romgrk/barbar.nvim"
    use "ojroques/nvim-bufdel"
    -- Linting and formatting
    use "jose-elias-alvarez/null-ls.nvim"
    -- Terminal
    use "akinsho/toggleterm.nvim"
    -- Status line
    use "nvim-lualine/lualine.nvim"
    -- Indent line
    use "lukas-reineke/indent-blankline.nvim"
    -- Telescope
    use "nvim-telescope/telescope.nvim"
    use "nvim-lua/plenary.nvim"
    -- Startup dashboard
    use "startup-nvim/startup.nvim"
    -- Discord presence
    use "andweeb/presence.nvim"
end)
