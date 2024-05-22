local status, packer = pcall(require, "packer")
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'neovim/nvim-lspconfig' -- LSP
  use {
    "williamboman/mason.nvim",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
  use 'williamboman/mason-lspconfig.nvim'

  use 'hrsh7th/nvim-cmp'     -- Completion
  use 'hrsh7th/cmp-nvim-lsp' -- nvim-cmp source for neovim's built-in LSP
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'hrsh7th/cmp-buffer'              -- nvim-cmp source for buffer words
  use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua

  use {
    'nvim-treesitter/nvim-treesitter',
    run = function()
      local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
      ts_update()
    end,
  }

  use {
    'weilbith/nvim-code-action-menu',
    cmd = 'CodeActionMenu',
  }

  use 'nvim-lualine/lualine.nvim' -- Statusline
  -- use 'navarasu/onedark.nvim'
  use 'folke/tokyonight.nvim'
  -- use "olimorris/onedarkpro.nvim"

  use 'onsails/lspkind-nvim' -- vscode-like pictograms
  use 'glepnir/lspsaga.nvim' -- LSP UIs

  use({
    'noib3/nvim-cokeline',
    requires = 'kyazdani42/nvim-web-devicons',
  })

  use 'nvim-lua/plenary.nvim' -- telescope dependency
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  use { 'numToStr/Comment.nvim',
    requires = {
      'JoosepAlviste/nvim-ts-context-commentstring'
    }
  }

  use 'norcalli/nvim-colorizer.lua'

  use 'tikhomirov/vim-glsl' -- glsl

  -- markdown preview use this command :MarkdownPreview
  -- use({
  --   "iamcco/markdown-preview.nvim",
  --   run = function() vim.fn["mkdp#util#install"]() end,
  -- })

  use "lukas-reineke/indent-blankline.nvim" -- indent indicator

  use 'mattn/emmet-vim'

  -- use 'prettier/vim-prettier'
  -- use "arnamak/stay-centered.nvim"
  -- use 'lewis6991/gitsigns.nvim'
  -- use 'dinhhuy258/git.nvim' -- For git blame & browse
  -- use 'folke/zen-mode.nvim'
  -- use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
  -- use 'nvim-treesitter/playground'
  -- use 'p00f/nvim-ts-rainbow' -- rainbow brackets
end)
