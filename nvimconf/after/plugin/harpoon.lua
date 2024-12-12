local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

-- Ensure that mark.add_file and mark.toggle_quick_menu are available
if mark and mark.add_file then
  vim.keymap.set("n", "<leader>ha", mark.add_file)
end

if mark and mark.toggle_quick_menu then
  vim.keymap.set("n", "<leader>hf", mark.toggle_quick_menu)
end

-- Ensure that ui.nav_file is available and is callable with an argument
if ui and ui.nav_file then
  vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
  vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
  vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
  vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
end

