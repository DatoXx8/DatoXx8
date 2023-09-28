return {
  'ThePrimeagen/harpoon',
  config = function()
    local mark = require("harpoon.mark")
    local ui   = require("harpoon.ui")
    vim.keymap.set("n", "<leader>ha", mark.add_file, {desc = 'Add current file to Harpoon'})
    vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, {desc = 'Toggle the Harpoon menu'})
    vim.keymap.set("n", "<C-a>", function() ui.nav_file(1) end, { desc = 'Navigate to 1st file' })
    vim.keymap.set("n", "<C-s>", function() ui.nav_file(2) end, { desc = 'Navigate to 2nd file' })
    vim.keymap.set("n", "<C-y>", function() ui.nav_file(3) end, { desc = 'Navigate to 3rd file' })
    vim.keymap.set("n", "<C-x>", function() ui.nav_file(4) end, { desc = 'Navigate to 4th file' })

    vim.keymap.set("n", "<leader>rw", function() vim.cmd([[Ex]]) end, { desc = 'Open up Net[R][W]' })
    vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = 'Scroll a half page down while keeping the cursor centered'})
    vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = 'Scroll a half page up while keeping the cursor centered'})
    vim.keymap.set("n", "n", "nzzzv")
    vim.keymap.set("n", "N", "Nzzzv")

    vim.keymap.set("n", "<leader>hs", vim.cmd.sp, { desc = 'Split the window horizontally' })
    vim.keymap.set("n", "<leader>vs", vim.cmd.vsp, { desc = 'Split the window vertically' })

    vim.keymap.set("n", "<C-h>", "<C-w>h")
    vim.keymap.set("n", "<C-j>", "<C-w>j")
    vim.keymap.set("n", "<C-k>", "<C-w>k")
    vim.keymap.set("n", "<C-l>", "<C-w>l")

    vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
    vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

    vim.keymap.set("n", "<leader>ru", function() vim.cmd([[!./build.sh]]) end, {desc = 'Run local build.sh'})
    vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", {desc = 'Make current file executable'})
    vim.cmd([[set scrolloff=10]])
  end,
}
