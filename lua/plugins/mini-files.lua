return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    enabled = false,
  },
  {
    "echasnovski/mini.files",
    keys = {
      { "<leader>e", "<cmd>lua MiniFiles.open()<cr>", desc = "Open MiniFiles" },
      {
        "<leader>E",
        "<cmd>lua MiniFiles.open(vim.api.nvim_buf_get_name(0))<cr>",
        desc = "Open MiniFiles in current buffer",
      },
    },
    config = function()
      require("mini.files").setup()
    end,
  },
}
