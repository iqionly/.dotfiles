return {
    "nvim-telescope/telescope.nvim",
    cmd = "Telescope",
    version = false,
    dependencies = {
        { 
            "nvim-telescope/telescope-live-grep-args.nvim" ,
            -- This will not install any breaking changes.
            -- For major updates, this must be adjusted manually.
            version = "^1.0.0",
        },
    },
    config = function()
        local telescope = require("telescope")

        -- first setup telescope
        telescope.setup({
            -- your config
        })

        -- then load the extension
        telescope.load_extension("live_grep_args")

        -- then load the extension dap debugger
        telescope.load_extension("dap")
    end,
    opts = {
        defaults = {
            layout_strategy = "horizontal",
            layout_config = {
                horizontal = {
                    prompt_position = "bottom",
                    width = { padding = 0 },
                    height = { padding = 0 },
                    preview_width = 0.5,
                },
            },
            sorting_strategy = "descending",
        },
    },
};
