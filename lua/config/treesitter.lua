-- Configuração do Treesitter nativo do Neovim 0.12+
-- O highlighting está ativado por padrão

-- Usar o treesitter como motor de dobras
vim.opt.foldmethod = 'expr'
vim.opt.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
vim.opt.foldlevel = 99 -- Abrir tudo por padrão

-- Para instalar parsers manualmente:
-- :TSInstall <linguagem>
-- Exemplo: :TSInstall lua python javascript typescript markdown markdown_inline
