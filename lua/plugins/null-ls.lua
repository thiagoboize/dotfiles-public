return {
  "nvimtools/none-ls.nvim",
  event = "VeryLazy",
  opts = function()
    local null_ls = require("null-ls")

    return {
      debug = true,
      sources = {
        null_ls.builtins.formatting.prettier,

        -- you can enable eslint_d if you're not in a nextjs project. Otherwise use the eslint default
        -- null_ls.builtins.diagnostics.eslint_d,
        -- null_ls.builtins.code_actions.eslint_d,

        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.code_actions.eslint,
      },
    }
  end,
}
