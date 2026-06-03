return {
  -- the colorscheme should be available when starting Neovim
  -- {
  --   "loctvl842/monokai-pro.nvim",
  --   version = false,
  --   lazy = false, -- make sure we load this during startup if it is your main colorscheme
  --   priority = 1000, -- make sure to load this before all the other start plugins
  --   config = function()
  --     -- load the colorscheme here
  --     vim.cmd([[colorscheme monokai-pro]])
  --   end,
  -- }

  {
    "tinted-theming/tinted-nvim",
    lazy = false,
    priority = 1000,
    opts = {
      default_scheme = "base16-ayu-dark",
    },
    config = function(_, opts)
      local tinted = require("tinted-nvim")
      tinted.setup(opts)

      local function apply_overrides()
        local aliases = tinted.get_palette_aliases()
        if aliases then
          -- @property (yaml keys, fields) fica branco no base16; usa red (base08) do tema ativo.
          vim.api.nvim_set_hl(0, "@property", { fg = aliases.red })
        end
      end

      vim.api.nvim_create_autocmd("ColorScheme", { callback = apply_overrides })
      apply_overrides()
    end,
  }
}
