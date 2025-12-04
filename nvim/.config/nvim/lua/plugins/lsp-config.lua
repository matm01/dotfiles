return {

  {
    "mason-org/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "flake8",
        "lua-language-server",
        "pyrefly",
        "ruff",
        "prettier",
        "debugpy",
        
      },
    },
  },
}
-- vim.lsp.enable({"pyrefly"})