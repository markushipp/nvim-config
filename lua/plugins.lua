local packer_path = vim.fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(packer_path)) > 0 then
    vim.fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', packer_path})
    vim.api.nvim_command('packadd packer.nvim')
end

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/plenary.nvim'}, {'BurntSushi/ripgrep'}, {'sharkdp/fd'}}
    }

    -- Themes
    use 'no-clown-fiesta/no-clown-fiesta.nvim'
    use 'ellisonleao/gruvbox.nvim'
    use 'catppuccin/nvim'
    use 'frenzyexists/aquarium-vim'

    -- Misc plugins
    use 'nvim-lua/lsp_extensions.nvim'
    use {"williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim", "neovim/nvim-lspconfig"}
    use 'nvim-lualine/lualine.nvim'
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {'nvim-tree/nvim-web-devicons'}
    }
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use {
        'L3MON4D3/LuaSnip',
        requires = {'saadparwaiz1/cmp_luasnip'}
    }
    use 'm4xshen/autoclose.nvim'

end) 
