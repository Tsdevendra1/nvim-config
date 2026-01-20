return {
  {
    "folke/flash.nvim",
    init = function()
      vim.opt.ignorecase = true
      vim.opt.smartcase = true
    end,
    opts = {
      modes = {
        search = {
          enabled = true,
        },
      },
    },
  },
}
