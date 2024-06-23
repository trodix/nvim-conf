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

call plug#end()

" search
nnoremap <silent> <C-e> :Telescope find_files<CR>
nnoremap <silent> <C-f> :Telescope live_grep<CR>

" switch tabs with left/right arrows
nnoremap <silent> <C-Right> :bn<CR>
nnoremap <silent> <C-Left> :bp<CR>

lua require("mason").setup()
lua require("mason-lspconfig").setup()
lua require("config/lspconfig")
lua require("config/mason-lspconfig-handlers")
lua require('config/treesitter')
lua require('config/nvim-cmp')
lua require('config/conform')
lua require('config/lualine')

lua require('config/elixir-tools')
lua require('config/lint')

set number " display line numbers in gutter
set updatetime=100 " trigger git change gutter status after 100ms
