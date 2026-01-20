return {
  "sindrets/diffview.nvim",
  cmd = { "DiffviewOpen", "DiffviewFileHistory" },
  opts = {
    view = {
      default = { layout = "diff2_vertical" },
      file_history = { layout = "diff2_vertical" },
    },
    file_panel = {
      win_config = { position = "bottom", height = 12 },
    },
  },
}
