-- In your plugins config (e.g., lua/plugins/snacks.lua)
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      matcher = {
        smartcase = true,
      },
      sources = {
        grep = {
          regex = false,  -- Use fixed-strings (literal) by default
        },
        files = {
          ignored = true,  -- show .gitignore'd files
          hidden = true,   -- show dotfiles
        },
      },
    },
  },
}
