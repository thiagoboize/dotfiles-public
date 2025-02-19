return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    filesystem = {
      filtered_items = {
        visible = true, -- Exibir arquivos ocultos
        hide_dotfiles = false, -- Mostrar arquivos começando com "."
        hide_gitignored = false, -- Mostrar arquivos ignorados pelo Git
      },
    },
  },
}
