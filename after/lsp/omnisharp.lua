return {
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
}
