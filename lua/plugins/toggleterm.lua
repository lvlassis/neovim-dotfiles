return   {
  'akinsho/toggleterm.nvim', version = "*",
  config = function ()
    require("toggleterm").setup()
      -- Abrir Terminal ah lá VSCode
      vim.keymap.set('n', '<leader>h', ':ToggleTerm direction=horizontal<CR>', { desc = 'Toggle terminal horizontal' })
      vim.keymap.set('n', '<leader>a', ':ToggleTerm<CR>', { desc = 'Toggle terminal' })
      vim.keymap.set('n', '<leader>T', ':ToggleTerm direction=float<CR>', { desc = 'Toggle terminal float' })

      -- Terminal ESC goes to normal mode
      vim.keymap.set('t', '<Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })
  end,
}
