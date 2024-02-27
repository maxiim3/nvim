vim.o.termguicolors = true

require("max")

-- Autocompile packer_compiled when plugins.lua is changed
-- vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile'

-- Ensure packer is installed
local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
  vim.cmd 'packadd packer.nvim'
end

-- LSP Config
local nvim_lsp = require('lspconfig')
nvim_lsp.tsserver.setup{
  cmd = { "/Users/maxi/.nvm/versions/node/v18.18.0/bin/typescript-language-server", "--stdio" },
}

-- Telescope
local actions = require('telescope.actions')
require('telescope').setup{
  defaults = {
    mappings = {
      i = {
        ["<esc>"] = actions.close
      },
    },
  },
}

-- Colorizer setup 
require 'colorizer'.setup()

-- Color scheme setup

vim.cmd 'colorscheme onedark'
-- Setting a transparent background
vim.api.nvim_set_hl(0, "Normal", { bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none"})

-- TreeSiiter
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,  -- Enable syntax highlighting
  },
}
