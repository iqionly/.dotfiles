return {
    cmd = { 'intelephense', '--stdio' },
    filetypes = { 'php' },
    root_markers = { '.git', 'composer.json' },
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
    on_attach = require("config.on_attach").on_attach,
};
