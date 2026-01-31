local util = require 'lspconfig.util';

return {
    cmd = { "omnisharp", "-z", "--hostPID", "12345", "DotNet:enablePackageRestore=false", "--encoding", "utf-8", "--languageserver" },
    filetypes = { 'cs', 'vb' },
    init_options = {},
    capabilities = {
        workspace = {
            workspaceFolders = false
        }
    },
    root_dir = function(bufnr, on_dir)
        local fname = vim.api.nvim_buf_get_name(bufnr)
        on_dir(
            util.root_pattern '*.slnx'(fname)
            or util.root_pattern '*.sln'(fname)
            or util.root_pattern '*.csproj'(fname)
            or util.root_pattern 'omnisharp.json'(fname)
            or util.root_pattern 'function.json'(fname)
        )
    end,
    settings = {
        FormattingOptions = {
            EnableEditorConfigSupport = true
        },
        MsBuild = {
            enable = true
        },
        RenameOptions = {},
        RoslynExtensionsOptions = {
            enableDecompilationSupport = true,
            enableImportCompletion = true,
            inlayHintsOptions = {
                enableForParameters = true,
                forLiteralParameters = true,
                forIndexerParameters = true,
                forObjectCreationParameters = true,
                forOtherParameters = true,
                suppressForParametersThatDifferOnlyBySuffix = false,
                suppressForParametersThatMatchMethodIntent = false,
                suppressForParametersThatMatchArgumentName = false,
                enableForTypes = true,
                forImplicitVariableTypes = true,
                forLambdaParameterTypes = true,
                forImplicitObjectCreation = true,
            },
        },
        Sdk = {
            IncludePrereleases = true
        },
    },
};
