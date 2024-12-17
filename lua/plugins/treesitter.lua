return {
    'nvim-treesitter/nvim-treesitter',
    build = ":TSUpdate",
    config = function()
        local treeConfig = require("nvim-treesitter.configs")
        treeConfig.setup {
            ensure_installed = {"lua", "javascript"},
            highlight = { enable = true },
            indent = { enable = true },
        }
    end
}
