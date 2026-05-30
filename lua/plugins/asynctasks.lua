return {
    {'skywind3000/asyncrun.vim'},
    {
      'skywind3000/asynctasks.vim',
      config = function()
        vim.g.asynctasks_term_pos = 'bottomleft'
        vim.g.asynctasks_term_rows = 10

        -- Mappings
        vim.keymap.set('n', '<leader>rr', ':w<CR>:AsyncTask project-run<CR>', { desc = 'Run project' })
        vim.keymap.set('n', '<leader>rb', ':w<CR>:AsyncTask project-build<CR>', { desc = 'Build project' })
        vim.keymap.set('n', '<F5>', ':w<CR>:AsyncTask project-run<CR>', { desc = 'Run project' })
        vim.keymap.set('n', '<F6>', ':w<CR>:AsyncTask project-build<CR>', { desc = 'Build project' })
        -- vim.keymap.set('n', '<leader>rt', ':w<CR>:AsyncTask project-test<CR>', { desc = 'Test project' })
        -- vim.keymap.set('n', '<leader>rm', ':w<CR>:AsyncTask project-monitor<CR>', { desc = 'Monitor project' })
      end
    },
}
