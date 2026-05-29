return {

    -- Mason, LSP Manager
    {
        'williamboman/mason.nvim',
        version = "1.11.0",
        init = function()
            require('mason').setup({})
        end,
    },
    {
        'williamboman/mason-lspconfig.nvim',
        version = "1.32.0",
        config = function()
            require('mason-lspconfig').setup({
                handlers = {
                    function(server_name)
                        vim.lsp.config(server_name, {})
                        vim.lsp.enable(server_name)
                    end,
                },
            })
        end,
    },


    -- Lsp do Neovim
    {'neovim/nvim-lspconfig'},

    -- Nvim-cmp. Autosugestion e completion
     { -- optional cmp completion source for require statements and module annotations
      "hrsh7th/nvim-cmp",
      opts = function(_, opts)
        opts.sources = opts.sources or {}

        table.insert(opts.sources, {
          name = "lazydev",
          group_index = 0, -- set group index to 0 to skip loading LuaLS completions
        })

        table.insert(opts.sources, { name = "dbab", })

      end,
    },
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
}
