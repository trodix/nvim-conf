# NEOVIM CONFIG

![Screenshot Neovim](./screenshot-nvim.png)

## Setup

Extract this in `~/.config/nvim/` as `git clone git@github.com:trodix/nvim-conf.git .`

### Pluggins (vim-plug)

- mason-lspconfig
- elixis-ls
- treesitter
- nvim-cmp
- conform
- telescope
- lualine
- vim-gitgutter

### Shortcuts

| KeyBinding    | Description                            |
|---------------|----------------------------------------|
| Ctrl + e      | Search files                           |
| Ctrl + f      | Search text in files                   |
| u             | Undo                                   |
| Ctrl + r      | Redo                                   |
| dd            | Cut 1 line                             |
| 5dd           | Cut 5 lines                            |
| yy            | Copy 1 line                            |
| 5yy           | Copy 5 lines                           |
| p             | Paste (before cursor)                  |
| Ctrl + z      | Send nvim to the background            |
| fg            | Retrieve backgroud session             |
| Ctrl + Left   | Navigate to prev tab                   |
| Ctrl + Right  | Navigate to next tab                   |

### Combo keys

#### Comment lines:

- `Ctrl` + `v` in default mode to enter in visual mode
- `Down` to select lines
- `Shift` + `i` to enter insert mode
- `#` or `//` on the current line
- `Esc` to apply to all selected lines

#### Uncomment lines:

- `Ctrl` + `v` in default mode to enter in visual mode
- `Down` to select lines
- `x` to delete 1st character

