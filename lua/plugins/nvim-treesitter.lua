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
    end
  }
}
