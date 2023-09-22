return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    keys = {
      { "<leader>e", "<cmd>lua MiniFiles.open()<cr>", desc = "Open MiniFiles" },
    },
    config = function()
      require("mini.files").setup()
    end,
  },
}
