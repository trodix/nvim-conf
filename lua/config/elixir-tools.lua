require("elixir").setup({
  nextls = {enable = false}, -- false: on utilise elixir-ls via mason et mason-lspconfig
  credo = {enable = true}, -- true: n'est pas dispo dans mason
  elixirls = {enable = false}, -- false: deja installé par mason
})
