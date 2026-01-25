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
vim.keymap.set("n", "gd", vim.lsp.buf.definition, { desc = "Go to definition" })

-- list references (Telescope)
vim.keymap.set("n", "gr", function()
  require("telescope.builtin").lsp_references()
end, { desc = "LSP references" });

vim.keymap.set('n', '<C-P>', '<C-I>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-\'', ':jumps<CR>', { noremap = true, silent = true })
