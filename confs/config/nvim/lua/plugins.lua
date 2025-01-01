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

require("lazy").setup({
    'ayu-theme/ayu-vim',
    'ribru17/bamboo.nvim',
    'nvim-lualine/lualine.nvim',
    {
      'neovim/nvim-lspconfig',
      dependencies = {
        'williamboman/mason.nvim',
        'williamboman/mason-lspconfig.nvim',
      },
      config = function()
        require('lsp-config')
      end,
    },
    'L3MON4D3/LuaSnip',
    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',
    {
      'romgrk/barbar.nvim',
       dependencies = {
         'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
         'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
       },
       init = function() vim.g.barbar_auto_setup = false end,
       opts = { 
           require('barbar-config')
       }
    },
    {
        'vim-scripts/DoxygenToolkit.vim'
    }
})
