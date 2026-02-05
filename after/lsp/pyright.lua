return {
    cmd = { "pyright-langserver", "--stdio" },
    filetypes = { "python" },
    on_attach = require('config.on_attach').on_attach,
    root_markers = { "pyrightconfig.json", "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", ".git" },
    settings = {
        python = {
            analysis = {
                autoSearchPaths = true,
                diagnosticMode = "openFilesOnly",
                useLibraryCodeForTypes = true
            }
        }
    }
}
