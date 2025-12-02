return {
  -- automated mason tool installation
  "WhoIsSethDaniel/mason-tool-installer.nvim",
  dependencies = {
    "williamboman/mason.nvim",
  },
  opts = {
    ensure_installed = {
      -- Language LSP
      "basedpyright",
      "python-lsp-server",
      "flake8",
      "clangd",
    },
  },
}
