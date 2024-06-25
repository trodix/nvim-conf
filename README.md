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

| KeyBinding        | Description                            |
|-------------------|----------------------------------------|
| Ctrl + e          | Search files                           |
| Ctrl + f          | Search text in files                   |
| u                 | Undo                                   |
| Ctrl + r          | Redo                                   |
| dd                | Cut 1 line                             |
| 5dd               | Cut 5 lines                            |
| yy                | Copy 1 line                            |
| 5yy               | Copy 5 lines                           |
| p                 | Paste (before cursor)                  |
| Ctrl + z          | Send nvim to the background            |
| fg                | Retrieve backgroud session             |
| Ctrl + Left/Right | Navigate to prev tab                   |
| 5j                | Go to 5 lines to bottom from cursor    |
| 5k                | Go to 5 lines to top from cursor       |
| Shift + Up/Down   | Move selected lines to UP/DOWN         |
| Ctrl + w          | Close current tab                      |
| :SessionSave      | Create/Save a session                  |
| :SessionDelete    | Delete a session                       |
| Ctrl + s          | Search sessions                        |
| Ctrl + w + v      | Split Vertically                       |
| Ctrl + w + s      | Split horizontally                     |
| Ctrl + w + q      | Close selected splitted window         |

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

