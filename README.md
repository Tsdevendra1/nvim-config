# Neovim Config

LazyVim-based configuration with custom keymaps and plugins.

## Custom Keymaps

### File Navigation

| Keymap | Description |
|--------|-------------|
| `<leader>p` | Project files (Snacks picker) |
| `<leader>ff` | Find files (cwd) |
| `<leader>fF` | Find files (root dir) |

### Buffer Navigation

| Keymap | Description |
|--------|-------------|
| `<leader>bb` | Snipe buffer menu (fast buffer switching with hints) |

Inside Snipe menu:
- Type hint character to jump to buffer
- `,d` - delete buffer
- `,v` - open in vsplit
- `,h` - open in split
- `J/K` - next/prev page
- `<esc>` - cancel

### Copy/Yank

| Keymap | Description |
|--------|-------------|
| `<leader>wd` | Copy relative file path to clipboard |
| `<leader>yp` | Yank relative path |

### Windows

| Keymap | Description |
|--------|-------------|
| `<leader>wq` | Delete window (moved from `<leader>wd`) |

## Plugins

| Plugin | Purpose |
|--------|---------|
| [snipe.nvim](https://github.com/leath-dub/snipe.nvim) | Fast buffer navigation with Vimium-style hints |
| [flash.nvim](https://github.com/folke/flash.nvim) | Enhanced search with jump labels |
| [avante.nvim](https://github.com/yetone/avante.nvim) | AI assistant (Claude) |
| [diffview.nvim](https://github.com/sindrets/diffview.nvim) | Git diff viewer (`:DiffviewOpen`, `:DiffviewFileHistory`) |
| [quick-scope](https://github.com/unblevable/quick-scope) | Highlights for `f/F/t/T` motions |
| [augment.vim](https://github.com/augmentcode/augment.vim) | AI code completion |
| [snacks.nvim](https://github.com/folke/snacks.nvim) | File picker with smartcase, shows hidden/ignored files |

## Options

- Line wrapping enabled
- System clipboard integration (`unnamedplus`)
- Python LSP: basedpyright
- Search highlight disabled after search (`hlsearch = false`)
- Snacks animations disabled
