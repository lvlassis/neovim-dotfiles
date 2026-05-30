return {
  "NotAShelf/direnv.nvim",
  event = "VeryLazy",
  config = function()
    require("direnv").setup({
      statusline = {
        enabled = true
      }
    })
  end,
}
