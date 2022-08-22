local M = {}

function M.setup()
    -- Indicate first time installation
    local packer_bootstrap = false

    -- packer.nvim configuration
    local conf = {
        profile = {
            enable = true,
            threshold = 1, -- the amount in ms that a plugins load time must be over for it to be included in the profile
        },
        display = {
            open_fn = function()
                return require("packer.util").float { border = "rounded" }
            end,
        },
    }

    -- Check if packer.nvim is installed
    -- Run PackerCompile if there are changes in this file
    local function packer_init()
        local fn = vim.fn
        local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim"
        if fn.empty(fn.glob(install_path)) > 0 then
            packer_bootstrap = fn.system {
                "git",
                "clone",
                "--depth",
                "1",
                "https://github.com/wbthomason/packer.nvim",
                install_path,
            }
            vim.cmd [[packadd packer.nvim]]
        end
        vim.cmd "autocmd BufWritePost plugins.lua source <afile> | PackerCompile"
    end

    -- Plugins
    local function plugins(use)
        use { "wbthomason/packer.nvim" }
        use {
            'nvim-telescope/telescope.nvim',
            requires = { {'nvim-lua/plenary.nvim'} }
        }
        use {'folke/tokyonight.nvim' }
        use {'vim-airline/vim-airline'}
        use {'vim-airline/vim-airline-themes'}
        use {'mg979/vim-visual-multi', branch='master'}
        use {'preservim/nerdcommenter'}
        use {'kylechui/nvim-surround'}
        use {'mvllow/modes.nvim'}
        use {'norcalli/nvim-colorizer.lua'}
        use {'rhysd/git-messenger.vim'}
        use {'kyazdani42/nvim-web-devicons'}
        use {'kyazdani42/nvim-tree.lua'}
        use {'tpope/vim-fugitive'}
        use {
            'nvim-treesitter/nvim-treesitter',
            run = ':TSUpdate'
        }
        use {'tversteeg/registers.nvim'}
        use {'easymotion/vim-easymotion'}
        use {'mattn/emmet-vim'}
        use {'folke/which-key.nvim'}
        use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

        -- lsp / cmp
        use {'williamboman/nvim-lsp-installer'}
        use {'neovim/nvim-lspconfig'}
        use {'mfussenegger/nvim-jdtls'}
        use {'mfussenegger/nvim-dap'}
        use {'hrsh7th/cmp-nvim-lsp'}
        use {'hrsh7th/cmp-buffer'}
        use {'hrsh7th/cmp-path'}
        use {'hrsh7th/cmp-cmdline'}
        use {'hrsh7th/nvim-cmp'}
        use {'SirVer/ultisnips'}
        use {'quangnguyen30192/cmp-nvim-ultisnips'}
        use {'nvim-telescope/telescope-ui-select.nvim' }
        use {'ahmedkhalf/project.nvim' }
        use {'glepnir/lspsaga.nvim', branch = "main"}

        -- Bootstrap Neovim
        if packer_bootstrap then
            print "Restart Neovim required after installation!"
            require("packer").sync()
        end
    end

    packer_init()

    local packer = require "packer"
    packer.init(conf)
    packer.startup(plugins)
end

return M
