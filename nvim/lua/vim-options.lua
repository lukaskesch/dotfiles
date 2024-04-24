-- Keymaps
vim.keymap.set('n', '<leader>e', ':Ex<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>w', ':w<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>q', ':q<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>Q', ':wqall<CR>', { noremap = true, silent = true })

-- Buffers
vim.keymap.set('n', '<leader>bn', ':bnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bp', ':bprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bf', ':bfirst<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bl', ':blast<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bj', ':b#<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bd', ':bdelete<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bc', ':enew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>bs', ':w | luafile %<CR>', { noremap = true, silent = true })

-- Tabs
vim.keymap.set('n', '<leader>tn', ':tabnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tp', ':tabprevious<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>tc', ':tabnew<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>td', ':tabclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>to', ':tabonly<CR>', { noremap = true, silent = true })

-- Quickfix
vim.keymap.set('n', '<leader>qo', ':copen<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qc', ':cclose<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qn', ':cnext<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qp', ':cprev<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>qf', ':cfirst<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>ql', ':clast<CR>', { noremap = true, silent = true })

-- Jumplist
vim.keymap.set('n', '<leader>jj', ':jumps<CR>', { noremap = true, silent = true })

-- Changelist
vim.keymap.set('n', '<leader>cc', ':changes<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cn', 'g;', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>cp', 'g,', { noremap = true, silent = true })

-- Git
vim.keymap.set('n', '<leader>gg', ':G <CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gS', ':G status<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gd', ':Gvdiffsplit<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gl', ':Git blame<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gp', ':Gitsigns prev_hunk<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gn', ':Gitsigns next_hunk<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gr', ':Gitsigns reset_hunk', { noremap = true, silent = false })
vim.keymap.set('n', '<leader>gv', ':Gitsigns preview_hunk_inline<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gL', ':Gitsigns toggle_current_line_blame<CR>', { noremap = true, silent = true })

vim.keymap.set('n', '<leader>gb', ':Telescope git_branches<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gc', ':Telescope git_commits<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gh', ':Telescope git_bcommits<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gf', ':Telescope git_files<CR>', { noremap = true, silent = true })
vim.keymap.set('n', '<leader>gs', ':Telescope git_status<CR>', { noremap = true, silent = true })





-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Pasting over text / deleting text without the text overwritting the register
vim.keymap.set("x", "<leader>p", [["_dP]])
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- Yank to and past to and from system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])
vim.keymap.set("n", "<leader>p", [["+p]])
vim.keymap.set("n", "<leader>P", [["+P]])

-- Moving selected lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- LSP
vim.keymap.set("n", "<leader>r", "<cmd>lua vim.lsp.buf.format()<CR>", { noremap = true, silent = true })


-- Copilot
vim.keymap.set("i", "<C-l>", "copilot#Accept()", { expr = true, noremap = true, replace_keycodes = false })
vim.keymap.set("i", "<C-j>", "copilot#Next()", { expr = true })
vim.keymap.set("i", "<C-k>", "copilot#Previous()", { expr = true })
vim.keymap.set("i", "<C-h>", "copilot#Dismiss()", { expr = true })

-- Harpoon
vim.keymap.set("n", "<leader>ha", "<cmd>lua require('harpoon.mark').add_file()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hm", "<cmd>lua require('harpoon.ui').toggle_quick_menu()<CR>",
    { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hc", "<cmd>lua require('harpoon.mark').clear_all()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>hp", "<cmd>lua require('harpoon.ui').nav_prev()<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h1", "<cmd>lua require('harpoon.ui').nav_file(1)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h2", "<cmd>lua require('harpoon.ui').nav_file(2)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h3", "<cmd>lua require('harpoon.ui').nav_file(3)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h4", "<cmd>lua require('harpoon.ui').nav_file(4)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h5", "<cmd>lua require('harpoon.ui').nav_file(5)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h6", "<cmd>lua require('harpoon.ui').nav_file(6)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h7", "<cmd>lua require('harpoon.ui').nav_file(7)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h8", "<cmd>lua require('harpoon.ui').nav_file(8)<CR>", { noremap = true, silent = true })
vim.keymap.set("n", "<leader>h9", "<cmd>lua require('harpoon.ui').nav_file(9)<CR>", { noremap = true, silent = true })




-- Setting indentation settings
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true

-- Window settions
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Set highlight on search
vim.o.hlsearch = false

-- Make line numbers default
vim.wo.number = true
vim.o.relativenumber = true

-- Visual Block Mode
vim.opt.virtualedit = "block"

-- Enable mouse mode
-- vim.o.mouse = 'a'

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
-- vim.o.clipboard = 'unnamedplus'

-- Enable break indent
vim.o.breakindent = true

-- Save undo history
vim.o.undofile = true

-- Case-insensitive searching UNLESS \C or capital in search
vim.o.ignorecase = true
vim.o.smartcase = true

vim.wo.signcolumn = 'yes'
vim.o.updatetime = 250
--vim.o.timeoutlen = 300
vim.o.completeopt = 'menuone,noselect'
vim.o.termguicolors = true

vim.opt.scrolloff = 10
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fold / Folding options
-- vim.opt.foldmethod = "indent"
-- vim.opt.foldlevel = 2

-- [[ Highlight on yank ]]
-- See `:help vim.highlight.on_yank()`
local highlight_group = vim.api.nvim_create_augroup('YankHighlight', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    callback = function()
        vim.highlight.on_yank()
    end,
    group = highlight_group,
    pattern = '*',
})
