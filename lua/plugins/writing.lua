return {
  {
    "williamboman/mason.nvim",
    opts = function(_, opts)
      table.insert(opts.ensure_installed, "proselint")
      table.insert(opts.ensure_installed, "write-good")
      table.insert(opts.ensure_installed, "alex")
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    opts = function(_, opts)
        local null_ls = require("null-ls")
        opts.sources = vim.list_extend(opts.sources or {}, { -- Use opts.sources ou uma lista vazia
            null_ls.builtins.diagnostics.proselint,  -- Proselint para diagnósticos
            null_ls.builtins.code_actions.proselint, -- Ações de código do Proselint
            null_ls.builtins.diagnostics.alex,       -- Alex para diagnósticos
            null_ls.builtins.diagnostics.write_good, -- Write-good para verificar estilo de escrita
        })
    end,
}
  {
    "stevearc/conform.nvim",
    optional = true,
    opts = {
      formatters_by_ft = {
        ["javascript"] = { "prettier" },
        ["javascriptreact"] = { "prettier" },
        ["typescript"] = { "prettier" },
        ["typescriptreact"] = { "prettier" },
        ["vue"] = { "prettier" },
        ["css"] = { "prettier" },
        ["scss"] = { "prettier" },
        ["less"] = { "prettier" },
        ["html"] = { "prettier" },
        ["json"] = { "prettier" },
        ["jsonc"] = { "prettier" },
        ["yaml"] = { "prettier" },
        ["markdown"] = { "prettier" },
        ["markdown.mdx"] = { "prettier" },
        ["graphql"] = { "prettier" },
        ["handlebars"] = { "prettier" },
      },
    },
  }
  
}
