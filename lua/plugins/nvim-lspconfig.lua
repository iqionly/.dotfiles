return {
    "neovim/nvim-lspconfig",
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
};
