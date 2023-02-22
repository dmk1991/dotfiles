require('lualine').setup({
    options = {
        globalstatus = true,
    }
})

    -- Potential LSP stuff I might want in the future
    --     '"🖧  " .. tostring(#vim.tbl_keys(vim.lsp.buf_get_clients()))',
    --     { 'diagnostics', sources = { 'nvim_diagnostic' } },
