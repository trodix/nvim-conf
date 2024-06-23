require("lspconfig").nextls.setup({
    cmd = {"nextls", "--stdio"},
    init_options = {
        extensions = {
            credo = { enable = true }
        },
        experimental = {
            completions = { enable = true }
        }
    },
    on_attach = function(client, bufnr)
        local buf_set_keymap = vim.api.nvim_buf_set_keymap
        local buf_set_option = vim.api.nvim_buf_set_option
        local opts = { noremap=true, silent=true }
    
        -- Mappings.
        buf_set_keymap(bufnr, 'n', 'gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', opts)
        buf_set_keymap(bufnr, 'n', 'K', '<Cmd>lua vim.lsp.buf.hover()<CR>', opts)
        buf_set_keymap(bufnr, 'n', 'gi', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<C-k>', '<Cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>wa', '<Cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>wr', '<Cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>wl', '<Cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>D', '<Cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>rn', '<Cmd>lua vim.lsp.buf.rename()<CR>', opts)
        buf_set_keymap(bufnr, 'n', 'gr', '<Cmd>lua vim.lsp.buf.references()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>e', '<Cmd>lua vim.diagnostic.open_float()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '[d', '<Cmd>lua vim.diagnostic.goto_prev()<CR>', opts)
        buf_set_keymap(bufnr, 'n', ']d', '<Cmd>lua vim.diagnostic.goto_next()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>q', '<Cmd>lua vim.diagnostic.setloclist()<CR>', opts)
        buf_set_keymap(bufnr, 'n', '<space>f', '<Cmd>lua vim.lsp.buf.formatting()<CR>', opts)
    end,
})

