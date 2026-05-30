return {
  {
    'nvim-treesitter/nvim-treesitter',
    lazy = false,
    build = ':TSUpdate',
    config = function()
      require('nvim-treesitter').setup({
        install = {
          "javascript",
          "typescript",
          "html",
          "css",
          "json",
          "bash",
          "lua",
          "vim",
          "python",
          "c",
          "cpp",
          "go",
        }
      })
      require('nvim-treesitter.configs').setup({
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false,
        },
      })

      -- Usar o treesitter como motor de dobras
      vim.opt.foldmethod = 'expr'
      vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
      vim.opt.foldlevel = 99 -- Abrir tudo por padrão
    end
  }
}
