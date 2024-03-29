require('nvim-treesitter.configs').setup({
    ensure_installed = 'all',
    highlight = {
      enable = true,
    },
    indent = {
      enable = true,
    },
    context_commentstring = {
      enable = true,
    },
    textobjects = {
        select = {
          enable = true,
          lookahead = true,
          keymaps = {
            ["if"] = "@function.inner",
            ["af"] = "@function.outer",
            ["ic"] = "@class.inner",
            ["ac"] = "@class.outer",
            ['ia'] = '@parameter.inner',
            ['aa'] = '@parameter.outer',
          },
        },
      },
  })
