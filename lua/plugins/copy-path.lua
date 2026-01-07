-- lua/plugins/copy-path.lua
return {
  "LazyVim/LazyVim",
  keys = {
    -- 1. disable the built-in window-delete mapping
    { "<leader>wd", false, mode = "n" },

    -- 2. add your "copy relative path" mapping
    {
      "<leader>wd",
      function()
        vim.fn.setreg("+", vim.fn.expand("%"))      -- push to system clipboard
        vim.notify("Copied relative file path")     -- tiny popup
      end,
      desc = "Copy relative file path",
      mode = "n",
    },

    -- (optional) restore Delete-window somewhere else
    {
      "<leader>wq",
      "<cmd>close<cr>",
      desc = "Delete window",
      mode = "n",
    },
  },
}
