return {
  "unblevable/quick-scope",
  lazy = false,
  config = function()
    -- Set highlight colors that complement Tokyo Night theme using proper autocmd method
    vim.cmd([[
      augroup qs_colors
        autocmd!
        autocmd ColorScheme * highlight QuickScopePrimary guifg='#ff9e64' gui=underline ctermfg=155 cterm=underline
        autocmd ColorScheme * highlight QuickScopeSecondary guifg='#7dcfff' gui=underline ctermfg=81 cterm=underline
      augroup END
    ]])
  end,
}
