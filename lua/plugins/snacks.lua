-- In your plugins config (e.g., lua/plugins/snacks.lua)
return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        grep = {
          regex = false,  -- Use fixed-strings (literal) by default
        },
      },
    },
  },
}
