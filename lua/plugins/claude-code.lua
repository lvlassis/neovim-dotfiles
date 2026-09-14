return {
  "greggh/claude-code.nvim",
  enabled = false,
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required for git operations
  },
  config = function()
    require("claude-code").setup({
      window = {
        position = "botright vertical",
        split_ratio = 0.3,
      }
    })

    vim.keymap.set('n', '<Leader>i', ':ClaudeCode<CR>', { desc = 'Open Claude Code' })
  end
}
