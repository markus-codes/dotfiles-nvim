return {
  "ibhagwan/fzf-lua",
  keys = {
    { "<leader>cb", "<cmd>FzfLua lsp_definitions<cr>", desc = "Go To Definitions" },
    { "<leader>cg", "<cmd>FzfLua lsp_references<cr>", desc = "Find Usages" },
    { "<leader>ci", "<cmd>FzfLua lsp_implementations<cr>", desc = "Find Implementations" }
  }
}
