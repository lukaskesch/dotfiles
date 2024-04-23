return {
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
        'hrsh7th/cmp-buffer', -- source for text in current buffer
        'hrsh7th/cmp-path', -- source for file paths
        'hrsh7th/cmp-nvim-lsp', -- source for LSP
        'hrsh7th/cmp-nvim-lua', -- source for nvim lua
        'L3MON4D3/LuaSnip', -- source for snippets
        'saadparwaiz1/cmp_luasnip', -- source for luasnip
        'rafamadriz/friendly-snippets', -- source for snippets
    },
    config = function()
        local cmp = require("cmp")
        local luasnip = require("luasnip")

        -- loads vscode style snippets
        require("luasnip/loaders/from_vscode").lazy_load()

        cmp.setup({
            completion = {
                completeopt = "menu,menuone,preview,noselect",
            },
            snippet = { -- snippet support
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            mapping = cmp.mapping.preset.insert({
                ["<C-p>"] = cmp.mapping.select_prev_item(),
                ["<C-n>"] = cmp.mapping.select_next_item(),
                ['<C-u>'] = cmp.mapping.scroll_docs(-4),
                ['<C-d>'] = cmp.mapping.scroll_docs(4),
                ['<C-Space>'] = cmp.mapping.complete(),
                ['<C-e>'] = cmp.mapping.abort(),
                ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
            }),
            sources = {
                { name = "nvim_lsp" },
                { name = "nvim_lua" },
                { name = "luasnip" },
                { name = "buffer" },
                { name = "path" },
            },
        })
    end,
}
