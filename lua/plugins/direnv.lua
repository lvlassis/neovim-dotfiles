return {
  "NotAShelf/direnv.nvim",
  config = function()
    require("direnv").setup({
      statusline = {
        enabled = true
      }
    })
  end,
}
