local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>ha", mark.add_file)

vim.keymap.set("n", "<leader><leader>", ui.toggle_quick_menu)

