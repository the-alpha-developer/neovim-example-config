vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]])

vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use "nvim-treesitter/playground"

    use {
        "williamboman/nvim-lsp-installer",
        "neovim/nvim-lspconfig",
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            'hrsh7th/cmp-nvim-lsp',
            'hrsh7th/cmp-buffer',
            'hrsh7th/cmp-path',
            'hrsh7th/cmp-cmdline',
        }
    }

    use {
        'lewis6991/gitsigns.nvim',
        -- tag = 'release' -- To use the latest release
    }

    use "EdenEast/nightfox.nvim"

    use "tpope/vim-fugitive"
    use "tpope/vim-surround"
    use "tpope/vim-commentary"

    use "jwalton512/vim-blade"

    use "feline-nvim/feline.nvim"

    use "kyazdani42/nvim-web-devicons"

end
)
