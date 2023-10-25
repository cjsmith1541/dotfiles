local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    'ellisonleao/gruvbox.nvim',
    'nvim-tree/nvim-tree.lua',
    'nvim-tree/nvim-web-devicons',
    'nvim-lualine/lualine.nvim',
    'nvim-treesitter/nvim-treesitter',
    'christoomey/vim-tmux-navigator',
    'tpope/vim-fugitive',
    'theprimeagen/harpoon',
    'nvim-lua/plenary.nvim',
    'mbbill/undotree',
    'Pocco81/auto-save.nvim',
    'mfussenegger/nvim-dap',
    'rcarriga/nvim-dap-ui',
    'nvim-telescope/telescope.nvim', tag = '0.1.0',
    -- lsp support
    'neovim/nvim-lspconfig',
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    -- auto complete
    'hrsh7th/nvim-cmp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-nvim-lua',
    'L3MON4D3/LuaSnip',
    'saadparwaiz1/cmp_luasnip',
    'rafamadriz/friendly-snippets',
    -- snippit
    'numToStr/Comment.nvim', lazy = false,
    'windwp/nvim-autopairs', event = 'InsertEnter',
    'lervag/vimtex',
    'simrat39/symbols-outline.nvim',
    'norcalli/nvim-colorizer.lua',
    'kiyoon/jupynium.nvim', build = 'pip3 install --user .',
    'rcarriga/nvim-notify',
    'stevearc/dressing.nvim',
    'lukas-reineke/indent-blankline.nvim',
    'lewis6991/gitsigns.nvim',
    'tpope/vim-surround',
    'tpope/vim-obsession',
}

local opts = {}

require("lazy").setup(plugins, opts)
