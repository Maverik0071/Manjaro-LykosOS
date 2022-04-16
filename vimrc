" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1
"
"" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-default branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" octo.nvim is a Neovim only plugin to integrate with Github. It requires GitHub CLI and telescope.nvim to be installed as well.

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
" plug 'gruvbox-community/gruvbox

" Vim-Revilatize
Plug 'ericbn/vim-relativize'
  set relativenumber
  set number
  set number relativenumber

" Vim-Airline
Plug 'bling/vim-airline'

" Vim-Colorscheme
"g:gruvbox_(option) = '(value)'
	let g:gruvbox_termcolors=16

Plug 'flazz/vim-colorschemes'
Plug 'morhetz/gruvbox'
Plug 'sainnhe/gruvbox-material'

colorscheme gruvbox_transparent_bg
highlight Normal guibg=nonei

"Jedi-vim
Plug 'davidhalter/jedi-vim'

" Python-scripting
Plug 'nvie/vim-flake8'
Plug 'ivanov/vim-ipython'
Plug 'tmhedberg/simpylfold'
	let g:SimpylFold_docstring_preview = 1
Plug 'rkulla/pydiction'
	filetype plugin oni
Plug 'hdima/python-syntax'
Plug 'python-mode/python-mode'
Plug 'vim-scripts/DoxygenToolkit.vim'
	let g:DoxygenToolkit_briefTag_pre="@Synopsis  "
	let g:DoxygenToolkit_paramTag_pre="@Param "
	let g:DoxygenToolkit_returnTag="@Returns   "
	let g:DoxygenToolkit_blockHeader="-------------------------------"
	let g:DoxygenToolkit_blockFooter="---------------------------------"
	let g:DoxygenToolkit_authorName="Mathias Lorente"
	let g:DoxygenToolkit_licenseTag="My own license" <-- !!! Does not end with "\<enter>"
Plug 'jmcantrell/vim-virtualenv'
Plug 'raimon49/requirements.txt.vim'
Plug 'ambv/black'
	black {source_file_or_directory}
	python -m black {source_file_or_directory}

" Vim-Compilier
Plug 'vim-erlang/vim-erlang-compiler'

" Vim-CSS-Color
Plug 'ap/vim-css-color'

" vim-multiple-cursors
Plug 'terryma/vim-multiple-cursors'
	vim script call plug#begin()

" Splitjoin
Plug 'andrewradev/splitjoin.vim'	

" EasyMotion
Plug 'easymotion/vim-easymotion'

" VIMPROC
"Plug 'shougo/vimproc.vim'
Plug 'Shougo/vimproc.vim', {'do' : 'make'}

"""""""""""""""""""""""""""""""""""""""""""""""

" NVIM - PLUGINS

"deoplete-nvim
For vim-plug
"Plug 'shougo/deoplete.nvim'
"
"	if has('nvim')
"  		Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
"	else
"  		Plug 'Shougo/deoplete.nvim'
"  		Plug 'roxma/nvim-yarp'
"  		Plug 'roxma/vim-hug-neovim-rpc'
"	endif
"	let g:deoplete#enable_at_startup = 1

"""""""""""""""""""""""""""""""""

" Initialize plugin system
call plug#end()

