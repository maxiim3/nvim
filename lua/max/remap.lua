vim.g.mapleader = " "
-- remap the :Ex command to space pv (Leader Project View)
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- remap to source the vim lua config
vim.keymap.set("n", "<leader><CR>", ":so ~/.config/nvim/init.lua")

vim.keymap.set("n", "<Cmd-k>", "<Up>")
vim.keymap.set("v", "<Cmd-j>", "<Down>")
vim.keymap.set("n", "<Cmd-l>", "<Right>")
vim.keymap.set("n", "<Cmd-h>", "<Up>")

-- Move between panes/windows using leader + j, k, l, h
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })


-- Telescope
vim.api.nvim_set_keymap('n', '<leader>ff', [[<cmd>Telescope find_files<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fg', [[<cmd>Telescope live_grep<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fb', [[<cmd>Telescope buffers<cr>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<leader>fc', [[<cmd>Telescope commands<cr>]], { noremap = true, silent = true })

-- in V mode J K to move around highlighted blocks
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- on J cursor stays at the begining of the line
vim.keymap.set("n", "J", "mzJ`z")

-- Jump from page blocks and cursor stays in the middle of the view port
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- When searching with / , leaves the cursor in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- when pasting a term, put the deleted one in the void register : keep the copied value
vim.keymap.set("x", "<leader>p", [["_dP]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")

-- tmux
vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- fix quick navigation quick fix list
-- vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
-- vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
-- vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
-- vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- NICE : replace term
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- make bash script executable without exiting the session
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.dotfiles/nvim/.config/nvim/lua/theprimeagen/packer.lua<CR>");
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set("n", "<leader><leader>", function()
	vim.cmd("so")
end)

-- fugitive
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")
-- Add file to harpoon
vim.keymap.set("n", "<Leader>!", mark.add_file)
-- Open Harpoon menu
vim.keymap.set("n", "<Leader>0", ui.toggle_quick_menu)
vim.keymap.set("n", "<Leader>1", function() ui.nav_file(1) end)
vim.keymap.set("n", "<Leader>2", function() ui.nav_file(2) end)
vim.keymap.set("n", "<Leader>3", function() ui.nav_file(3) end)
vim.keymap.set("n", "<Leader>4", function() ui.nav_file(4) end)

-- UndoTree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)


