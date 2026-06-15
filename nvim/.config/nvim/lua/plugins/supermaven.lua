return {
  "supermaven-inc/supermaven-nvim",
  event = "InsertEnter",
  cmd = { "SupermavenUseFree", "SupermavenUsePro" },
  opts = {
    keymaps = {
      accept_suggestion = "<Tab>",
      clear_suggestion = "<S-Tab>",
      accept_word = "<A-f>",
    },
  },
}
