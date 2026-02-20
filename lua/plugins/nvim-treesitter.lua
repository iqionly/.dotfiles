return {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    depedencies = {
        { "windwp/nvim-ts-autotag" },
    },
    opts = {
        autotag = { enable = true },
        indent = { enable = true }, ---@type lazyvim.TSFeat
        highlight = { enable = true }, ---@type lazyvim.TSFeat
        folds = { enable = true }, ---@type lazyvim.TSFeat
        ensure_installed = ensure_installed,
    },
}
