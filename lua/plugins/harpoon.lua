return {
  {
    "ThePrimeagen/harpoon",
    config = function(_, opts)
      require("harpoon").setup(opts)
      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Harpoon Add File" })

      vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Harpoon Toggle Quick Menu" })

      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Harpoon Toggle Quick Menu" })

      vim.keymap.set("n", "<leader>1", function()
        ui.nav_file(1)
      end, { desc = "Harpoon File 1" })

      vim.keymap.set("n", "<leader>2", function()
        ui.nav_file(2)
      end, { desc = "Harpoon File 2" })

      vim.keymap.set("n", "<leader>3", function()
        ui.nav_file(3)
      end, { desc = "Harpoon File 3" })

      vim.keymap.set("n", "<leader>4", function()
        ui.nav_file(4)
      end, { desc = "Harpoon File 4" })

      vim.keymap.set("n", "<leader>5", function()
        ui.nav_file(5)
      end, { desc = "Harpoon File 5" })

      vim.keymap.set("n", "<leader>6", function()
        ui.nav_file(6)
      end, { desc = "Harpoon File 6" })

      vim.keymap.set("n", "<leader>7", function()
        ui.nav_file(7)
      end, { desc = "Harpoon File 7" })

      vim.keymap.set("n", "<leader>8", function()
        ui.nav_file(8)
      end, { desc = "Harpoon File 8" })

      vim.keymap.set("n", "<leader>9", function()
        ui.nav_file(9)
      end, { desc = "Harpoon File 9" })
    end,
  },
  {
    "ThePrimeagen/vim-be-good",
    keys = {
      { "<leader>vbg", "<cmd>VimBeGood<cr>", { desc = "Vim Be Good" } },
    },
  },
}
