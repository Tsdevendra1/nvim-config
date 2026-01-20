-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- soft autosave: save all modified file buffers when Neovim loses focus
vim.api.nvim_create_autocmd("FocusLost", {
  group = vim.api.nvim_create_augroup("AutoSaveOnFocusLost", { clear = true }),
  callback = function()
    vim.cmd("silent! wall") -- write all modified buffers
  end,
})

-- optional: reduce "E37" prompts on common jumps/commands
vim.opt.autowrite = true
