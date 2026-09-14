return {
  "sudo-tee/opencode.nvim",
  dependencies = {
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { 'markdown', 'opencode_output' },
      },
      ft = { 'markdown', 'Avante', 'copilot-chat', 'opencode_output' },
    },
    -- Optional, for file mentions and commands completion, pick only one
    -- 'saghen/blink.cmp',
    'hrsh7th/nvim-cmp',

    -- Optional, for file mentions picker, pick only one
    'nvim-telescope/telescope.nvim',
  },
  config = function()
    require("opencode").setup({})

    vim.keymap.set('n', '<Leader>i', ':Opencode<CR>', { desc = 'Open Claude Code' })
  end,
}
