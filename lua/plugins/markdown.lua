return {
    {
        'MeanderingProgrammer/render-markdown.nvim',
        dependencies = { 'echasnovski/mini.nvim' }, -- Neovim 0.12+ tem Treesitter nativo
        ---@module 'render-markdown'
        ---@type render.md.UserConfig
        opts = {
            anti_conceal = { enabled = false },
            file_types = { 'markdown', 'opencode_output' },
        },
        ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
        init = function()
            -- Associa o parser markdown do Treesitter ao filetype opencode_output
            vim.treesitter.language.register('markdown', 'opencode_output')
        end,
    }
}
