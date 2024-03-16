return {
  plugins = {
    {
      "xiyaowong/transparent.nvim",
      lazy = false,
    },
  },
  lsp = {
    servers = {
      "esbonio",
      "jedi_language_server",
      "ruff_lsp",
    }
  }
}
