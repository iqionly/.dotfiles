-- Tab indent map
vim.keymap.set('n', '<Tab>', '>>')
vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', require('telescope').extensions.live_grep_args.live_grep_args, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- go to definition (jump)
vim.keymap.set("n", "gd", function()
    if vim.bo.filetype == 'cs' then
        require('omnisharp_extended').telescope_lsp_definitions() 
    else
        vim.lsp.buf.definition()
    end
end);

-- list references (Telescope)
vim.keymap.set("n", "gr", function() 
    if vim.bo.filetype == 'cs' then
        require('omnisharp_extended').telescope_lsp_references() 
    else
        require("telescope.builtin").lsp_references()
    end
end);
vim.keymap.set("n", "gi", function() 
    if vim.bo.filetype == 'cs' then
        require('omnisharp_extended').telescope_lsp_implementation() 
    end
end);

-- List Debugger Keymaps
vim.keymap.set('n', '<F5>', function() require('dap').continue() end)
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end)
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end)
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end)
vim.keymap.set('n', '<Leader>b', function() require('dap').toggle_breakpoint() end)
vim.keymap.set('n', '<Leader>B', function() require('dap').set_breakpoint() end)
vim.keymap.set('n', '<Leader>lp', function() require('dap').set_breakpoint(nil, nil, vim.fn.input('Log point message: ')) end)
vim.keymap.set('n', '<Leader>dr', function() require('dap').repl.open() end)
vim.keymap.set('n', '<Leader>dl', function() require('dap').run_last() end)
vim.keymap.set({'n', 'v'}, '<Leader>dh', function()
  require('dap.ui.widgets').hover()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dp', function()
  require('dap.ui.widgets').preview()
end)
vim.keymap.set({'n', 'v'}, '<Leader>dc', function()
    require('dapui').toggle();
end)
vim.keymap.set('n', '<Leader>df', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.frames)
end)
vim.keymap.set('n', '<Leader>ds', function()
  local widgets = require('dap.ui.widgets')
  widgets.centered_float(widgets.scopes)
end)

-- Diagnostic Keymaps
vim.keymap.set({'n', 'i'}, '<C-s>e', vim.diagnostic.open_float, { desc = "Show diagnostic [E]rror message at cursor"});
