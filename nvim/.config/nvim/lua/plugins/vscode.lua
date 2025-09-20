return {
  "Mofiqul/vscode.nvim",
  name = "vscode",
  opts = function(_, opts)
    local c = require("vscode.colors").get_colors()
    opts.group_overrides = {
      CursorLine = { bg = c.vscCursorDark },
    }
  end,
}
