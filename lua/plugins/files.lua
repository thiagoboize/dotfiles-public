return {
  {
    "stevearc/oil.nvim",
    opts = {},
    keys = {
      {
        "-",
        function()
          require("oil").open()
        end,
        desc = "Open parent directory",
      },
    },
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "ibhagwan/fzf-lua",
    dependencies = { "nvim-tree/nvim-web-devicons" },  -- ou "echasnovski/mini.icons", se preferir
    opts = {},
  },
}

