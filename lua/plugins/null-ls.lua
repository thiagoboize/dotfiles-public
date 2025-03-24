return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    local null_ls = require("null-ls")

    return {
      sources = {
        null_ls.builtins.formatting.prettier, -- Formatação com Prettier
        null_ls.builtins.diagnostics.eslint_d, -- Linting com ESLint
        null_ls.builtins.code_actions.eslint_d, -- Correções automáticas
      },
    }
  end,
}
