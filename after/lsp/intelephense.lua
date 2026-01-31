return {
    cmd = { 'intelephense', '--stdio' },
    filetypes = { 'php' },
    root_markers = { '.git', 'composer.json' },
    init_options = {
        -- storagePath = vim.os.tmpdir() -- Optional absolute path to storage dir. Defaults to os.tmpdir().
        -- globalStoragePath = os.homedir(), -- Optional absolute path to a global storage dir. Defaults to os.homedir().
        -- licenceKey = …, -- Optional licence key or absolute path to a text file containing the licence key.
        -- clearCache = …, -- Optional flag to clear server state. State can also be cleared by deleting {storagePath}/intelephense
    },
    settings = {
        intelephense = {
            files = {
                maxSize = 1000000;
            },
            telemetry = {
                enabled = false,
            },
        },
    },
};
