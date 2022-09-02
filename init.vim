"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/xev/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/xev/.cache/dein')

" Let dein manage dein
" Required:
call dein#add('/home/xev/.cache/dein/repos/github.com/Shougo/dein.vim')

" Add or remove your plugins here like this:
" Snippets
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')

" Theming
call dein#add('nvim-lualine/lualine.nvim')
call dein#add('kyazdani42/nvim-web-devicons')
call dein#add('olivercederborg/poimandres.nvim')

" Little bells and whistles
call dein#add('nvim-treesitter/nvim-treesitter', {'hook_post_update': 'TSUpdate'})
call dein#add('lukas-reineke/indent-blankline.nvim')
call dein#add('chribra/Colorizer')
call dein#add('mboughaba/i3config.vim')

" Tools for development
call dein#add('tpope/vim-fugitive')
call dein#add('neoclide/coc.nvim', { 'merged': 0, 'rev': 'release' })
call dein#add('vim-scripts/Vimball')

" Explorers
call dein#add('kyazdani42/nvim-tree.lua')

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------

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

" Indent-line config
source ~/.config/nvim/indent-blankline.lua

" Lualine Config
source ~/.config/nvim/lualine.lua

" Devicons config
lua << END
require('nvim-web-devicons').setup()
END

lua << END
require("nvim-tree").setup()
END

" Options
source ~/.config/nvim/options.lua

" Colorizer config
let g:colorizer_auto_color = 1

" Normal Configurations
colorscheme poimandres
set number
set cursorline
set noshowmode

" Treesitter config
lua <<EOF
require'nvim-treesitter.configs'.setup {
    ensure_installed = {'python', 'cpp', 'c', 'go', 'rust', 'lua'}, -- one of "all", "maintained" (parsers with maintainers), or a list of languages
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
