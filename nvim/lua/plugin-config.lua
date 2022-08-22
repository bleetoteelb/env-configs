require('plugins.colorizer')
require('plugins.fugitive')
require('plugins.nvimtree')
require('plugins.modes')
require('plugins.nerdcommenter')
require('plugins.lspconfig')
require('plugins.cmp')
require('plugins.treesitter')
require('plugins.bufferline')
require('plugins.dap')
require('plugins.telescope')
require('plugins.project')
-- require('plugins.lspsaga') -- not yet prepared

-- Only setup call
require 'nvim-surround'.setup()
require 'which-key'.setup()
