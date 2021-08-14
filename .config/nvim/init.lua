vim.cmd [[packadd packer.nvim]]

require('packer').startup(function()
  -- IDE stuff
  use { 'ConradIrwin/vim-bracketed-paste' }
  use { 'adelarsq/vim-matchit' }
  use { 'airblade/vim-gitgutter' }
  use { 'dense-analysis/ale' }
  use { 'dyng/ctrlsf.vim' }
  use { 'godlygeek/tabular' }
  use { 'jiangmiao/auto-pairs' }
  use { 'junegunn/fzf', run = vim.fn['fzf#install'] }
  use { 'junegunn/fzf.vim' }
  use { 'kien/rainbow_parentheses.vim' }
  use { 'roman/golden-ratio' }
  use { 'sickill/vim-pasta' }
  use { 'simnalamburt/vim-mundo' }
  use { 'takac/vim-hardtime' }
  use { 'tpope/vim-abolish' }
  use { 'tpope/vim-commentary' }
  use { 'tpope/vim-fugitive' }
  use { 'tpope/vim-repeat' }
  use { 'tpope/vim-sensible' }
  use { 'tpope/vim-sleuth' }
  use { 'tpope/vim-surround' }
  use { 'tpope/vim-vinegar' }
  use { 'vim-airline/vim-airline' }

  -- Lisps
  use { 'guns/vim-sexp' }
  use { 'Olical/conjure', tag = 'v4.22.1' }
  use { 'tpope/vim-sexp-mappings-for-regular-people' }

  -- Use Fennel for configuration
  use { 'Olical/aniseed', tag = 'v3.20.0' }
  use { 'Olical/nvim-local-fennel', tag = 'v2.11.0' }

  -- Manage packer using packer
  use { 'wbthomason/packer.nvim' }
end)

vim.api.nvim_set_var('aniseed#env', true)
