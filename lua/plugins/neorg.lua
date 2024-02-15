local wk = require("which-key")

wk.register({
  N = { "<cmd>Neorg<cr>", "Neorg" },
  w = {
    name = "+workspace",
    n = { "<cmd>Neorg workspace notes<cr>", "[neorg] Notes" },
  },
  n = {
    name = "+notes",
    c = { "<cmd>Neorg toc<cr>", "[neorg] Table of contents" },
    t = { "<cmd>Neorg toggle-concealer<cr>", "[neorg] Toggle concealer" },
  },
}, { prefix = "<localleader>" })

return {
  {
    "nvim-neorg/neorg",
    build = ":Neorg sync-parsers",
    lazy = false,
    -- tag = "*",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("neorg").setup({
        load = {
          ["core.defaults"] = {}, -- Loads default behaviour
          ["core.concealer"] = {}, -- Adds pretty icons to your documents
          ["core.summary"] = {},
          ["core.completion"] = {
            config = {
              engine = "nvim-cmp",
            },
          },
          ["core.dirman"] = { -- Manages Neorg workspaces
            config = {
              workspaces = {
                notes = "~/notes",
              },
            },
          },
        },
      })
    end,
  },
}
