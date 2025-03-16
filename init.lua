-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
vim.opt.hlsearch = false

-- In ~/.config/nvim/lua/config/keymaps.lua
-- Remove the original ff mapping
vim.keymap.del("n", "<leader>ff")

vim.keymap.set("n", "<leader>p", function()
  Snacks.picker.files()
end, { desc = "Project Files" })
