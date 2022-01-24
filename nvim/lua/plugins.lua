local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use {'dracula/vim', as = 'dracula'}
	use {
 	   'kyazdani42/nvim-tree.lua',
    	   requires = 'kyazdani42/nvim-web-devicons',
    	   config = function() require'nvim-tree'.setup {} end
	}
    use {
      'nvim-lualine/lualine.nvim',
      requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {'akinsho/bufferline.nvim', requires = 'kyazdani42/nvim-web-devicons'}
    use 'norcalli/nvim-colorizer.lua' 
    use {
    'lewis6991/gitsigns.nvim',
    requires = {
      'nvim-lua/plenary.nvim'
    },
    config = function()
      require('gitsigns').setup{current_line_blame = true}
    end
    }  
    use {'nvim-treesitter/nvim-treesitter', run = ":TSUpdate"}
    use {'windwp/nvim-ts-autotag'}
    use {'p00f/nvim-ts-rainbow'}
    use {'windwp/nvim-autopairs'}
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-cmdline'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-vsnip'
    use 'hrsh7th/vim-vsnip'
    use 'onsails/lspkind-nvim'
    use 'voldikss/vim-floaterm'
    use 'hrsh7th/vim-vsnip-integ'

    use {
        'williamboman/nvim-lsp-installer',
    }
    use "tpope/vim-commentary"
    use "tpope/vim-fugitive"
    use { "folke/which-key.nvim" } 
    use {
    'nvim-telescope/telescope.nvim',
    requires = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope-media-files.nvim'
        }
    }
    use 'scrooloose/syntastic'
    use 'gwww/vim-bbye'
    use 'mattn/emmet-vim'
    use 'glepnir/dashboard-nvim'
    use "lukas-reineke/indent-blankline.nvim"
end)
