return {
  {
    'stevearc/aerial.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-tree/nvim-web-devicons"
    },
    keys = {
      { "<leader>ct", "<cmd>AerialOpen float<cr>", desc = "Toggle Outline" }
    }
  }
}
