return {
    cmd = { "phpactor", "language-server" },
    filetypes = { "php" },
    root_markers = {
        ".git",
        "composer.json",
        ".phpactor.json",
        ".phpactor.yml",
    },
    on_attach = require('config.on_attach').on_attach
};
