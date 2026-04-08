return {
  {
    "folke/tokyonight.nvim",
    opts = {
      on_highlights = function(hl, c)
        -- Make variables white like VSCode
        hl["@variable"] = { fg = c.fg }
        hl["@variable.member"] = { fg = c.fg }
        hl["@lsp.type.variable"] = { fg = c.fg }

        -- Disable LSP parameter/variable tokens so treesitter handles them
        -- Treesitter @variable.parameter applies to both definitions and keyword args
        hl["@lsp.type.parameter.python"] = {}
        hl["@lsp.type.variable.python"] = {}
        hl["@variable.parameter.python"] = { fg = c.yellow }

        -- Disable LSP class/type semantic tokens so treesitter takes over
        hl["@lsp.type.class.python"] = {}
        hl["@lsp.type.type.python"] = {}

        -- Builtin types (bool, str, int, list, etc.) → custom blue
        local builtin_blue = "#60C0DB"
        hl["@lsp.typemod.class.builtin.python"] = { fg = builtin_blue }
        hl["@lsp.typemod.class.defaultLibrary.python"] = { fg = builtin_blue }

        -- Type hints (treesitter @type) → white for custom types, blue for builtins
        hl["@type.python"] = { fg = c.fg }
        hl["@type.builtin.python"] = { fg = builtin_blue }

        -- Constructor calls → same color as functions
        hl["@constructor.python"] = { link = "Function" }

        -- Builtin constants (None, True, False) and enum members/readonly vars → orange
        hl["@constant.builtin.python"] = { fg = c.orange }
        hl["@boolean.python"] = { fg = c.orange }
        hl["@constant.python"] = { fg = c.orange }
        hl["@lsp.type.enumMember.python"] = { fg = c.orange }
        hl["@lsp.typemod.variable.readonly.python"] = { fg = c.orange }

        -- Operators and keywords → purple (using Statement color)
        hl["@operator"] = { link = "Statement" }
        hl["@keyword"] = { link = "Statement" }
        hl["@lsp.type.keyword.python"] = {}

        -- Keep Markdown inline code unboxed.
        hl["@markup.raw.markdown_inline"] = { fg = c.fg, bg = "NONE" }

      end,
    },
  },
}
