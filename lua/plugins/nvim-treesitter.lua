-- O Neovim 0.12+ tem suporte nativo ao Treesitter
-- Usando tree-sitter-manager.nvim para gerenciar parsers automaticamente

return {
  {
    "romus204/tree-sitter-manager.nvim",
    config = function()
      require("tree-sitter-manager").setup({
        ensure_installed = {
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
          "gotmpl",
          "yaml",
          "markdown",
          "markdown_inline",
        },
        auto_install = true, -- Instala automaticamente parsers para novos filetypes
        highlight = true,    -- Ativa highlight (já é padrão no Neovim 0.12)
      })
    end
  }
}
