"NeoBundle Scripts-----------------------------
if has('vim_starting')
  " Required:
  set runtimepath+=/home/joshua/.config/nvim/bundle/neobundle.vim/
endif

" Required:
call neobundle#begin(expand('/home/joshua/.config/nvim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'ryanoasis/vim-devicons'
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'
NeoBundle 'dense-analysis/ale'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'neoclide/coc.nvim'
NeoBundle 'nvim-treesitter/nvim-treesitter'
NeoBundle 'mboughaba/i3config.vim'
NeoBundle 'nanotech/jellybeans.vim'
NeoBundle 'edkolev/promptline.vim'
NeoBundle 'Yggdroot/indentLine'

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

" Mappings for tabs
map <F1> :bprevious<Return>
map <F2> :bnext<Return>

" Easy parenthesis stuff
inoremap " ""<Left>
inoremap ( ()<Left>
inoremap [ []<Left>
inoremap { {}<Left>

" Tab Size
set tabstop=4
set shiftwidth=4
set expandtab

" Airline Config
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

" Normal Configurations
set termguicolors
colorscheme jellybeans
set number
set cursorline
set noshowmode

" Treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
  ensure_installed = "maintained", -- one of "all", "maintained" (parsers with maintainers), or a list of languages
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
EOF

" i3config config
aug i3config_ft_detection
  au!
  au BufNewFile,BufRead ~/.config/i3/config set filetype=i3config
aug end

