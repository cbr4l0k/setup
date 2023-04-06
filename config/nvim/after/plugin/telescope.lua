require('telescope').setup{
    defaults = {
        file_ignore_patterns = {
            "lib/*", "share/*", "bin/*", "__pycache__/*", "__init__.py",
            "migrations/*"
        },
    }
}

local builtin = require('telescope.builtin')


vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<C-p>', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
