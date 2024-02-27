return require('packer').startup(function()
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- LSP and Completion
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'

    -- Telescope for file searching
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- Color Scheme based on the file type
    use 'norcalli/nvim-colorizer.lua'
    use 'christianchiarulli/nvcode-color-schemes.vim'

    use 'navarasu/onedark.nvim'
    -- Lua
    require('onedark').setup {
        style='darker',
        colors = {
            bright_orange = "#ff8800",    -- define a new color
            green = '#00ffaa',            -- redefine an existing color
        },
        highlights = {
            TSKeyword = {fg = '$green'},
            TSString = {fg = '$bright_orange', bg = '#00ff00', fmt = 'bold'},
            TSFunction = {fg = '#0000ff', sp = '$cyan', fmt = 'underline,italic'},
            TSFuncBuiltin = {fg = '#0059ff'}
        }
    }   
    require('onedark').load()

    -- Treesitter for better syntax highlighting
    use {'nvim-treesitter/nvim-treesitter'}

    -- Plugin for treesitter
    use( 'nvim-treesitter/playground')

    -- Harpoon 
    use( 'ThePrimeagen/harpoon')

    -- VIM Surround
    use 'tpope/vim-surround'

    -- VIM Fugitive Git
    use 'tpope/vim-fugitive'

    -- Auto close tags
    use 'alvan/vim-closetag'

    -- Auto Pair
    use 'Ace-Who/vim-AutoPair'

    -- Undo Tree - local branch nd history
    use ('mbbill/undotree')


end)


