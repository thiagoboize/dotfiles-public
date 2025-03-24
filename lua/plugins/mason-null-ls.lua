return {
  "jay-babu/mason-null-ls.nvim",
  event = "VeryLazy",
  dependencies = { "mason.nvim", "nvimtools/none-ls.nvim" },
  opts = {
    ensure_installed = { "eslint_d", "prettier" },
    automatic_installation = true,
  },
}
