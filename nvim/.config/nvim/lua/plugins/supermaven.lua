return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = { "SupermavenUseFree", "SupermavenUsePro" },
  opts = {
    keymaps = {
      accept_suggestion = "<A-f>",
      clear_suggestion = "<A-c>",
    },
  },
}
