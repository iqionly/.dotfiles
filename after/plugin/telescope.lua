local telescope = require("telescope")

-- first setup telescope
telescope.setup({
    -- your config
})

-- then load the extension
telescope.load_extension("live_grep_args")

-- then load the extension dap debugger
telescope.load_extension("dap")
