-- Setting leader settings before any keymaps
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

vim.api.nvim_set_keymap('n', '<Space>', '<Nop>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('v', '<Space>', '<Nop>', { noremap = true, silent = true })

vim.o.timeoutlen = 1000

require("vim-options")
require("lazy-setup")




 function Apply_last_code_action_test()
  local bufnr = vim.api.nvim_get_current_buf()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local params = vim.lsp.util.make_range_params()
  params.context = { diagnostics = vim.lsp.diagnostic.get_line_diagnostics() }

  -- Request code actions from the LSP server
  vim.lsp.buf_request(bufnr, 'textDocument/codeAction', params, function(_, result, _, _)
    if result and #result > 0 then
      -- Select the last code action
      local action = result[#result]
      vim.inspect(action)
      -- print the action table to the console 
      vim.api.nvim_out_write(vim.inspect(action))
      print(action)
    end
    end)
end


-- Function to apply the last code action
 function Apply_last_code_action()
  -- Get the current buffer and cursor position     
  local bufnr = vim.api.nvim_get_current_buf()
  local cursor_pos = vim.api.nvim_win_get_cursor(0)
  local params = vim.lsp.util.make_range_params()
  params.context = { diagnostics = vim.lsp.diagnostic.get_line_diagnostics() }

  -- Request code actions from the LSP server
  vim.lsp.buf_request(bufnr, 'textDocument/codeAction', params, function(_, result, _, _)
    if result and #result > 0 then
      -- Select the last code action
      local action = result[#result]

      -- Check if the action is a command or a code action itself
      if action.command then
        -- Execute the command
        local command = action.command
        if command.arguments then
          vim.lsp.buf.execute_command(command)
        else
          vim.lsp.buf.execute_command(action)
        end
      elseif action.edit or type(action.command) == 'table' then
        -- Apply the code action edit
        if action.edit then
          vim.lsp.util.apply_workspace_edit(action.edit)
        end
        -- Execute the command if present
        if action.command then
          vim.lsp.buf.execute_command(action.command)
        end
      end
    else
      print('No code actions available')
    end
  end)
end

-- Keymap to apply the last code action
vim.api.nvim_set_keymap('n', '<leader>l1', '<cmd>lua Apply_last_code_action()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>l2', '<cmd>lua Apply_last_code_action_test()<CR>', { noremap = true, silent = true })
