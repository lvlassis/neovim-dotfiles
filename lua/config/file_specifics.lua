-- REGRA: Tab com dois espaços
vim.api.nvim_create_autocmd("FileType", {
  pattern = {"markdown", "lua", "nix"},
  callback = function()
    vim.opt.shiftwidth = 2
    vim.opt.tabstop = 2
    vim.opt.expandtab = true
  end,
})

vim.filetype.add({
  extension = {
    launch = "xml",
    gotmpl = "gotmpl",
  },
  pattern = {
    [".*%.yaml%.gotmpl"] = "gotmpl",
    [".*%.ya?ml"] = function(path)
      if path:match("[/\\]k8s[/\\]") or path:match("[/\\]chart[/\\]") then
        return "gotmpl"
      end
    end,
  },
})

