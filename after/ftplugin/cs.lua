vim.lsp.enable("omnisharp");

require('dap-cs').setup();

require('lint').linters_by_ft = {
    cs = { 'ast-grep' },
};

vim.api.nvim_create_autocmd({ "BufWritePost" }, {
  callback = function()
    require("lint").try_lint()
  end,
})
