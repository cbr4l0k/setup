-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]


return require('packer').startup(function(use)

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- === Appearance ===
    use "ellisonleao/gruvbox.nvim" -- Gruvbox color scheme

    -- === Navigation ===
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { 'nvim-lua/plenary.nvim' }
    }
    use 'theprimeagen/harpoon' -- Harpoon navigation and quickfix manager
    use {
        'nvim-tree/nvim-tree.lua',
        requires = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            require("nvim-tree").setup {}
        end
    }

    -- === Editing ===
    use 'mbbill/undotree' -- Undo history visualizer
    use 'tpope/vim-fugitive' -- Git wrapper
    use 'github/copilot.vim' -- GitHub Copilot integration


    -- === Autocompletion ===
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use {
        "hrsh7th/nvim-cmp",
        requires = {
            { "hrsh7th/cmp-buffer" },
            { "hrsh7th/cmp-path" },
            { "saadparwaiz1/cmp_luasnip" },
            { "hrsh7th/cmp-nvim-lsp" },
            { "hrsh7th/cmp-nvim-lua" },
        }
    }

    -- === Language Support ===
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            'neovim/nvim-lspconfig',
            'williamboman/mason-lspconfig.nvim',
        }
    }
    use {
        "L3MON4D3/LuaSnip",
        -- Follow latest release
        tag = "v<CurrentMajor>.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
        -- Install jsregexp (optional)
        run = "make install_jsregexp"
    }
        -- Preconfigured snippets
    use  "rafamadriz/friendly-snippets" 

    require("luasnip.loaders.from_vscode").lazy_load()

    -- === Language Specific ==
    use "rust-lang/rust.vim" -- Rust suppor

    -- === Misc ===
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use 'nvim-treesitter/playground' -- Treesitter playground

    use {
        "williamboman/mason.nvim",
        run = ":MasonUpdate"
    }

    use {
        "hrsh7th/nvim-cmp",
        requires = {
            { "kdheepak/cmp-latex-symbols" },
        },
        sources = {
            {
                name = "latex_symbols",
                option = {
                    strategy = 0 -- mixed
                },
            },
        },
    }
end)
