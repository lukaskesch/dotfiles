return {
    -- Fuzzy Finder (files, lsp, etc)
    { 'nvim-telescope/telescope.nvim', branch = '0.1.x', dependencies = { 'nvim-lua/plenary.nvim' },
        config = function () 
            local builtin = require('telescope.builtin')
            vim.keymap.set('n', '<leader>sf', builtin.find_files, {})
            vim.keymap.set('n', '<leader>sg', builtin.live_grep, {})
            vim.keymap.set('n', '<leader>sb', builtin.buffers, {})
            vim.keymap.set('n', '<leader>sc', builtin.command_history, {})
            vim.keymap.set('n', '<leader>sC', builtin.commands, {})
            vim.keymap.set('n', '<leader>sh', builtin.help_tags, {})
            vim.keymap.set('n', '<leader>sj', builtin.jumplist, {})
            vim.keymap.set('n', '<leader>sk', builtin.keymaps, {})
            vim.keymap.set('n', '<leader>sm', builtin.marks, {})
            vim.keymap.set('n', '<leader>sM', builtin.man_pages, {})
            vim.keymap.set('n', '<leader>sq', builtin.quickfix, {})
            vim.keymap.set('n', '<leader>sQ', builtin.quickfixhistory, {})
            vim.keymap.set('n', '<leader>sr', builtin.resume, {})
            vim.keymap.set('n', '<leader>sR', builtin.registers, {})
            vim.keymap.set('n', '<leader>so', builtin.vim_options, {})
            vim.keymap.set('n', '<leader>sw', builtin.grep_string, {})
            vim.keymap.set('n', '<leader>s/', builtin.search_history, {})
        end
    },

    -- Fuzzy Finder Algorithm which requires local dependencies to be built.
    -- Only load if `make` is available. Make sure you have the system
    -- requirements installed.
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        -- NOTE: If you are having trouble with this installation,
        --       refer to the README for telescope-fzf-native for more instructions.
        build = 'make',
        cond = function()
            return vim.fn.executable 'make' == 1
        end,
    }
}
