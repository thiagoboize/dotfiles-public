return {
  {
    "VidocqH/lsp-lens.nvim",
    opts = {
      enable = true,
      include_declaration = false,
      sections = {
        definition = true,
        references = true,
        implementation = true,
      },
      ignore_filetype = {
        "prisma",
      },
    },
  },
  {
    "mhanberg/output-panel.nvim",
    event = "VeryLazy",
    keys = {
      { "<leader>uo", "<cmd>OutputPanel<cr>", desc = "Toggle LSP output" },
    },
    config = true,
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        tsserver = {},
      },
    },
  },
}
