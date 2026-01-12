return {
  "leath-dub/snipe.nvim",
  keys = {
    {
      "<leader>bb",
      function()
        require("snipe").open_buffer_menu()
      end,
      desc = "Snipe buffer menu",
    },
  },
  opts = {
    ui = {
      position = "center",
      open_win_override = {
        border = "rounded",
      },
    },
    hints = {
      dictionary = "sadflewcmpghio",
    },
    sort = "last", -- sort by last accessed
  },
}
