-- Configuration plugins and options
vim.cmd [[packadd packer.nvim]]

local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  packer_bootstrap = vim.fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- LSP with completion
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'

  -- Utility
  use {
    'lambdalisue/fern.vim',
    config = function()
      vim.api.nvim_command('command! FernPwd :execute \':Fern . -drawer\'')
    end
  }
  use 'editorconfig/editorconfig-vim'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
