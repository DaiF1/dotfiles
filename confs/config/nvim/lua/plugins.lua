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
        'neoclide/coc.nvim',
        branch = 'release',
        config = function()
            require('coc-config')
        end
    },
    {'romgrk/barbar.nvim',
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
