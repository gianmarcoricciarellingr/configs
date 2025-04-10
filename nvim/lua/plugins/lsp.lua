return {
    "neovim/nvim-lspconfig",
    opts = {
        servers = {
            emmet_language_server = {
                filetypes = { "html" },
            },
            vtsls = {
                settings = {
                    typescript = {
                        inlayHints = {
                            enumMemberValues = { enabled = false },
                            functionLikeReturnTypes = { enabled = false },
                            parameterNames = { enabled = false },
                            parameterTypes = { enabled = false },
                            propertyDeclarationTypes = { enabled = false },
                            variableTypes = { enabled = false },
                        },
                    },
                },
            },
        },
    },
}
