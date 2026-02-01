return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        {
            "folke/neoconf.nvim",
            cmd = "Neoconf",
            opts = {},
        },
        { "hoffs/omnisharp-extended-lsp.nvim" },

        -- Useful status updates for LSP.
        { 'j-hui/fidget.nvim', opts = {} },

        -- Allows extra capabilities provided by blink.cmp
        { 'saghen/blink.cmp' },
    },
    config = function()
        -- Auto install mason LSP
        require("mason-lspconfig").setup({
            ensure_installed = mason_install,
            automatic_installation = true,
        });
    end,
};
