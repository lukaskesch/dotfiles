return {
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate",
        dependencies = {
            'nvim-treesitter/nvim-treesitter-textobjects',
            'JoosepAlviste/nvim-ts-context-commentstring',
        },

        config = function()
            local config = require("nvim-treesitter.configs")
            config.setup({
                auto_install = true,
                ensure_installed = {
                    'html', 'css', 'javascript', 'typescript', 'tsx', 'styled',
                    'dockerfile', 'sql',
                    'go', 'c', 'python', 'java',
                    'gitignore', 'bash', 'diff',
                    'lua', 'vim', 'vimdoc', 

                },
                highlight = { enable = true },
                indent = { enable = true },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        --init_selection = "gs",
                        --init_selection = "<CR>",
                        init_selection = "+",
                        node_incremental = "+",
                        node_decremental = "-",
                        scope_incremental = false,
                        --scope_incremental = "<CR>"
                    },
                },
                textobjects = {
                    select = {
                        enable = true,
                        lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
                        keymaps = {
                            -- You can use the capture groups defined in textobjects.scm
                            --['aa'] = '@parameter.outer',
                            --['ia'] = '@parameter.inner',
                            ['ap'] = '@parameter.outer',
                            ['ip'] = '@parameter.inner',
                            ['af'] = '@function.outer',
                            ['if'] = '@function.inner',
                            ['ac'] = '@comment.outer',
                            ['ic'] = '@comment.inner',
                            --['ac'] = '@class.outer',
                            --['ic'] = '@class.inner',
                            ['ai'] = '@conditional.outer',
                            ['ii'] = '@conditional.inner',
                            ['as'] = '@call.outer',
                            ['is'] = '@call.inner',
                        },
                    },
                    move = {
                        enable = true,
                        set_jumps = true, -- whether to set jumps in the jumplist
                        goto_next_start = {
                            ['<Leader>jf'] = '@function.outer',
                            ['<Leader>jp'] = '@parameter.outer',
                            ['<Leader>jc'] = '@comment.outer',
                            ['<Leader>ji'] = '@conditional.outer',
                        },
                        goto_next_end = {
                        },
                        goto_previous_start = {
                            ['<Leader>jF'] = '@function.outer',
                            ['<Leader>jP'] = '@parameter.outer',
                            ['<Leader>jC'] = '@comment.outer',
                            ['<Leader>jI'] = '@conditional.outer',
                        },
                        goto_previous_end = {
                        },
                    },
                    swap = {
                        enable = true,
                        swap_next = {
                            ['<Leader>mf'] = '@function.outer',
                            ['<Leader>mp'] = '@parameter.outer',
                            ['<Leader>mc'] = '@comment.outer',
                            ['<Leader>mi'] = '@conditional.outer',
                        },
                        swap_previous = {
                            ['<Leader>mF'] = '@function.outer',
                            ['<Leader>mP'] = '@parameter.outer',
                            ['<Leader>mC'] = '@comment.outer',
                            ['<Leader>mI'] = '@conditional.outer',
                        },
                    },
                },
            })
        end
    }
}
