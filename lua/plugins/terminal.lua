return {
  {
    "akinsho/toggleterm.nvim",
    opts = {
      -- Your existing toggleterm options
    },
    keys = {
      -- Add this to your existing keymaps or replace them
      { "<C-`>", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal (VSCode style)" },
      -- You might also want to add the backtick without control
      { "`", "<cmd>ToggleTerm<cr>", desc = "Toggle terminal (VSCode style)" },
    },
  },
}
