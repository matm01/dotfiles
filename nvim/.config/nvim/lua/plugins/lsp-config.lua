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
        -- "pyrefly",
        "ty",
        "ruff",
        "prettier",
        "debugpy",
        "llm-ls",
        "texlab",
      },
    },
  },
}
-- vim.lsp.enable({"pyrefly"})
