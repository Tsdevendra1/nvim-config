local function find_root(bufnr)
  local filename = vim.api.nvim_buf_get_name(bufnr)
  if filename == "" then
    return nil
  end

  return vim.fs.root(filename, {
    "buildServer.json",
    ".bsp",
    "*.xcodeproj",
    "*.xcworkspace",
    "Package.swift",
    ".git",
  })
end

local function attach_or_start_sourcekit(bufnr, attempts)
  if not vim.api.nvim_buf_is_valid(bufnr) then
    return
  end

  local existing = vim.lsp.get_clients({ name = "sourcekit" })
  if #existing > 0 then
    for _, client in ipairs(existing) do
      if not vim.lsp.buf_is_attached(bufnr, client.id) then
        vim.lsp.buf_attach_client(bufnr, client.id)
      end
    end
    return
  end

  local ok, lazy = pcall(require, "lazy")
  if ok then
    lazy.load({ plugins = { "nvim-lspconfig" } })
  end

  local cfg = vim.lsp.config.sourcekit
  if cfg then
    local overrides = {
      cmd = { "xcrun", "sourcekit-lsp", "--default-workspace-type", "buildServer" },
    }
    local root_dir = find_root(bufnr)
    if root_dir then
      overrides.root_dir = root_dir
      overrides.workspace_folders = { { name = root_dir, uri = vim.uri_from_fname(root_dir) } }
    end
    vim.lsp.start(vim.tbl_deep_extend("force", {}, cfg, overrides), { bufnr = bufnr })
  elseif attempts < 20 then
    vim.defer_fn(function()
      attach_or_start_sourcekit(bufnr, attempts + 1)
    end, 200)
  end
end

local bufnr = vim.api.nvim_get_current_buf()
vim.defer_fn(function()
  attach_or_start_sourcekit(bufnr, 0)
end, 50)
