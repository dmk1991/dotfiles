require('mason').setup()
require('mason-lspconfig').setup({ automatic_installation = true })

-- local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())
local capabilities = require("cmp_nvim_lsp").default_capabilities()

-- PHP
require('lspconfig').intelephense.setup({ capabilities = capabilities}) 

-- Vue LSP which will also act as LSP for JS and TS
require('lspconfig').volar.setup({
  capabilities = capabilities,
  filetypes = {'typescript', 'javascript', 'javascriptreact', 'typescriptreact', 'vue', 'json'}
})

-- Tailwind
require('lspconfig').tailwindcss.setup({ capabilities = capabilities })

-- JSON
require('lspconfig').jsonls.setup({
  capabilities = capabilities,
  settings = {
    json = {
      schemas = require('schemastore').json.schemas(),
    },
  },
})

-- null-ls
require('null-ls').setup({
  sources = {
    require('null-ls').builtins.diagnostics.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file({ '.eslintrc.js' })
      end,
    }),
    require('null-ls').builtins.diagnostics.trail_space.with({ disabled_filetypes = { 'NvimTree' } }),
    require('null-ls').builtins.formatting.eslint_d.with({
      condition = function(utils)
        return utils.root_has_file({ '.eslintrc.js' })
      end,
    }),
    require('null-ls').builtins.formatting.prettierd,
  },
})

require('mason-null-ls').setup({ automatic_installation = true })

-- LSP Keymaps
vim.keymap.set('n', '<Leader>d', '<cmd>lua vim.diagnostic.open_float()<CR>')
vim.keymap.set('n', '[d', '<cmd>lua vim.diagnostic.goto_prev()<CR>')
vim.keymap.set('n', ']d', '<cmd>lua vim.diagnostic.goto_next()<CR>')
vim.keymap.set('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
vim.keymap.set('n', 'gi', ':Telescope lsp_implementations<CR>')
vim.keymap.set('n', 'gr', ':Telescope lsp_references<CR>')
vim.keymap.set('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
vim.keymap.set('n', '<Leader>rn', '<cmd>lua vim.lsp.buf.rename()<CR>')

-- Commands
vim.api.nvim_create_user_command('Format', vim.lsp.buf.formatting, {})

vim.diagnostic.config({
    virtual_text = false,
    float = {
      source = true
    }
  })
