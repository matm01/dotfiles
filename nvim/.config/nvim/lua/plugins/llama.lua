if true then
  return {}
end

return {
  "ggml-org/llama.vim",

  init = function()
    vim.g.llama_config = {
      endpoint_fim = "http://desktop:8012/infill",
      endpoint_inst = "http://desktop:8012/v1/chat/completions",
      -- model_fim = "fim-qwen-7b-default",
      -- model_inst =             '',
      -- api_key =                '',
      -- n_prefix =               256,
      -- n_suffix =               64,
      -- n_predict =              128,
      -- stop_strings =           [],
      -- t_max_prompt_ms =        500,
      -- t_max_predict_ms =       1000,
      show_info = 0, -- 2 inline, 1 status, 0 off
      -- auto_fim =               v:true,
      -- max_line_suffix =        8,
      -- max_cache_keys =         250,
      -- ring_n_chunks =          16,
      -- ring_chunk_size =        64,
      -- ring_scope =             1024,
      -- ring_update_ms =         1000,
      -- keymap_fim_trigger =     "<leader>llf",
      -- keymap_fim_accept_full = "<Tab>",
      -- keymap_fim_accept_line = "<S-Tab>",
      -- keymap_fim_accept_word = "<leader>ll]",
      -- keymap_inst_trigger =    "<leader>lli",
      -- keymap_inst_rerun =      "<leader>llr",
      -- keymap_inst_continue =   "<leader>llc",
      -- keymap_inst_accept =     "<Tab>",
      -- keymap_inst_cancel =     "<Esc>",
      -- keymap_debug_toggle =    "<leader>lld",
      -- enable_at_startup =      v:true,
    }
  end,
}
