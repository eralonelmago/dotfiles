return {
  "ThePrimeagen/harpoon",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    local mark = require("harpoon.mark")
    local ui = require("harpoon.ui")

    vim.keymap.set("n", "<leader>a", mark.add_file, { desc = "Add file to harpoon" })
    vim.keymap.set("n", "<leader>h", ui.toggle_quick_menu, { desc = "Show harpoon menu" })
    vim.keymap.set("n", "<leader>u", function() ui.nav_file(1) end, { desc = "Navigate to file 1 (harpoon)" })
    vim.keymap.set("n", "<leader>i", function() ui.nav_file(2) end, { desc = "Navigate to file 2 (harpoon)" })
    vim.keymap.set("n", "<leader>o", function() ui.nav_file(3) end, { desc = "Navigate to file 3 (harpoon)" })
  end
}
