local M = {}

-- "Modo trabalho": detectado por uma env var exportada no shell do trabalho
-- (ex: no .zshrc da máquina do serviço), nunca hardcoded aqui.
--   export NVIM_WORK_MODE=servico-ti
--
-- Usado pra alternar entre ferramentas de IA (claude-code.nvim em casa,
-- codecompanion.nvim no trabalho, via gateway interno).
function M.is_work()
  local value = vim.env.NVIM_WORK_MODE
  return value == "servico-ti"
end

return M
