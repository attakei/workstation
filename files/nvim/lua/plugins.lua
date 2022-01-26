-- Configuration plugins and options
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- For LSP
  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'

  -- Utility
  use {
    'lambdalisue/fern.vim',
    config = function()
      vim.api.nvim_command('command! FernPwd :execute \':Fern . -drawer\'')
    end
  }
  use 'editorconfig/editorconfig-vim'
end)
