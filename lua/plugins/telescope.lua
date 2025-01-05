return {
    'nvim-telescope/telescope.nvim', branch = '0.1.x',
    -- or                              , branch = '0.1.x',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
        local builtin = require('telescope.builtin')

        local find_word = function ()
            builtin.grep_string({search = vim.fn.expand("<cword>")})
        end

        vim.keymap.set('n', '<C-p>', builtin.find_files, {})
        vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
        vim.keymap.set('n', '<leader>fw', find_word, {})
    end
}
