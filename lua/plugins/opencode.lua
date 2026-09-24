return {
  "sudo-tee/opencode.nvim",
  enabled = require("config.work_mode").is_work(),
  dependencies = {
    {
      "MeanderingProgrammer/render-markdown.nvim",
      opts = {
        anti_conceal = { enabled = false },
        file_types = { "markdown", "opencode_output" },
      },
      ft = { "markdown", "Avante", "copilot-chat", "opencode_output" },
    },
    "hrsh7th/nvim-cmp",
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    -- Associa o parser markdown do Treesitter ao buffer do OpenCode
    vim.treesitter.language.register("markdown", "opencode_output")

    require("opencode").setup({
      server = {
        password = "nvim-local-opencode",
      },
      ui = {
        input = {
          text = {
            wrap = true,
          },
        },
      },
    })

    -- Garante que o conceal funcione nos buffers de saída do OpenCode
    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "opencode_output", "markdown" },
      callback = function(args)
        -- O tree-sitter-manager só inicia o highlight para filetypes conhecidos,
        -- e o conceal de **, * e ` vem das queries de highlight do markdown_inline
        if args.match == "opencode_output" then
          pcall(vim.treesitter.start, args.buf, "markdown")
        end
        vim.opt_local.conceallevel = 2
        vim.opt_local.concealcursor = "nc" -- oculta marcadores nos modos normal e command
        if args.match == "opencode_output" then
          vim.opt_local.wrap = true
          vim.opt_local.linebreak = true -- quebra nas palavras, não no meio delas
        end
      end,
    })

    vim.keymap.set("n", "<Leader>i", ":Opencode<CR>", { desc = "Open Claude Code" })
  end,
}
