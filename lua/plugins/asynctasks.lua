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

        -- Fechar saída do asyncrun (quickfix ou terminal) sem mover o cursor
        vim.keymap.set('n', '<leader>rx', function()
          for _, win in ipairs(vim.api.nvim_list_wins()) do
            local bt = vim.bo[vim.api.nvim_win_get_buf(win)].buftype
            if bt == 'terminal' then
              vim.api.nvim_win_close(win, false)
              return
            end
          end
          vim.cmd('cclose')
        end, { desc = 'Close asyncrun output' })

        -- q fecha a janela quando dentro do terminal ou quickfix (modo normal)
        vim.api.nvim_create_autocmd('TermOpen', {
          callback = function()
            vim.keymap.set('n', 'q', '<cmd>close<CR>', { buffer = true, nowait = true })
          end,
        })
        vim.api.nvim_create_autocmd('FileType', {
          pattern = 'qf',
          callback = function()
            vim.keymap.set('n', 'q', '<cmd>cclose<CR>', { buffer = true, nowait = true })
          end,
        })
      end
    },
}
