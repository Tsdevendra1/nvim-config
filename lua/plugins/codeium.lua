return {
  {
    "hrsh7th/nvim-cmp",
    optional = true,
    dependencies = { "codeium.nvim" },
    opts = function(_, opts)
      table.insert(opts.sources, 1, {
        name = "codeium",
        group_index = 1,
        priority = 100,
      })
    end,
  },
  {
    "Exafunction/codeium.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "hrsh7th/nvim-cmp",
    },
    config = function()
      require("codeium").setup({
        enable_cmp_source = true,
        virtual_text = {
          enabled = false,
        },
      })
    end,
  },
}
