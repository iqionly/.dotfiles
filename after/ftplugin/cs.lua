vim.lsp.enable("omnisharp");

require('dap-cs').setup();

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
