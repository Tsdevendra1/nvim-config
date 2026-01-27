return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        basedpyright = {
          settings = {
            basedpyright = {
              analysis = {
                inlayHints = {
                  callArgumentNames = false,
                  variableTypes = false,
                  functionReturnTypes = false,
                  genericTypes = false,
                },
              },
            },
          },
        },
      },
    },
  },
}
