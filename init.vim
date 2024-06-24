call plug#begin()

Plug 'williamboman/mason-lspconfig.nvim' " lspconfig via mason 
Plug 'neovim/nvim-lspconfig' " config lsp 
Plug 'williamboman/mason.nvim' " lsp download manager
Plug 'nvim-lua/plenary.nvim' " search
Plug 'nvim-telescope/telescope.nvim' " search
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " highliter
Plug 'hrsh7th/cmp-nvim-lsp' " autocomplete
Plug 'hrsh7th/cmp-buffer' " autocomplete
Plug 'hrsh7th/cmp-path' " autocomplete
Plug 'hrsh7th/cmp-cmdline' " autocomplete
Plug 'hrsh7th/nvim-cmp' " autocomplete
Plug 'stevearc/conform.nvim' " formatter
Plug 'nvim-lualine/lualine.nvim' " status bar + open file tabs
Plug 'nvim-tree/nvim-web-devicons' " nerd icons
Plug 'mfussenegger/nvim-lint' " highliter
Plug 'elixir-tools/elixir-tools.nvim' " install credo-language-server (analyse static de code)
Plug 'airblade/vim-gitgutter'
Plug 'rmagatti/auto-session'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'windwp/nvim-autopairs'

call plug#end()

lua require("mason").setup()
lua require("mason-lspconfig").setup()
lua require("config/lspconfig")
lua require("config/mason-lspconfig-handlers")
lua require('config/treesitter')
lua require('config/nvim-cmp')
lua require('config/conform')
lua require('config/lualine')
lua require('config/auto-session')
lua require('config/indent-blankline')
lua require('config/autopairs')

lua require('config/elixir-tools')
lua require('config/lint')

lua require('config/set')
lua require('config/remap')

