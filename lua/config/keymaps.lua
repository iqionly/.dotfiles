-- Tab indent map
vim.keymap.set('n', '<Tab>', '>>')
vim.keymap.set('n', '<S-Tab>', '<<')
vim.keymap.set('v', '<Tab>', '>gv')
vim.keymap.set('v', '<S-Tab>', '<gv')

local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope [F]ind [F]iles' });
vim.keymap.set('n', '<leader>fg', require('telescope').extensions.live_grep_args.live_grep_args, { desc = 'Telescope [F]ind Live [G]rep' });
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope [F]ind [B]buffers' });
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope [F]ind [H]elp' });
vim.keymap.set('n', '<leader>fr', builtin.resume, { desc = 'Telescope [F]ind [R]esume' });
vim.keymap.set('n', '<leader>fk', builtin.keymaps, { desc = 'Telescope [F]ind [K]eymaps' });
vim.keymap.set('n', '<leader>fp', builtin.git_files, { desc = 'Telescope [F]ind [P]roject Files'});

vim.keymap.set({'n', 'i'}, "<A-j>", "<cmd>cnext<cr>", { desc = "Move to next or bottom" })
vim.keymap.set({'n', 'i'}, "<A-k>", "<cmd>cprev<cr>", { desc = "Move to prev or up" })
vim.keymap.set({'n', 'i'}, "<M-q>", function()
  for _, win in ipairs(vim.fn.getwininfo()) do
    if win.quickfix == 1 then
      vim.cmd("cclose")
      return
    end
  end
  vim.cmd("copen")
end, { desc = "Toggle Quickfix list" })
