" Uncomment to use vim config
" set runtimepath^=~/.vim runtimepath+=~/.vim/after
" let &packpath = &runtimepath
" source ~/.vim/vimrc

" support project-local config
set exrc
set secure

call plug#begin('~/.vim/plugged')
Plug 'keith/xcconfig.vim'
Plug 'udalov/kotlin-vim'
Plug 'github/copilot.vim'
Plug 'jxnblk/vim-mdx-js'
Plug 'mxw/vim-jsx'
Plug 'junegunn/vim-easy-align'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'mattreduce/vim-mix'
Plug 'mhinz/vim-mix-format'
Plug 'BeneCollyridam/futhark-vim'
Plug 'pearofducks/ansible-vim'
Plug 'mfukar/robotframework-vim'
Plug 'jremmen/vim-ripgrep'
Plug 'uarun/vim-protobuf'
Plug 'stefandtw/quickfix-reflector.vim'
Plug 'chr4/nginx.vim'
Plug 'hashivim/vim-terraform'
Plug 'jparise/vim-graphql'
Plug 'thoughtbot/vim-rspec'
Plug 'flazz/vim-colorschemes'
Plug 'airblade/vim-gitgutter'
Plug 'vim-scripts/groovyindent-unix'
Plug 'digitaltoad/vim-jade'
Plug 'briancollins/vim-jst'
Plug 'vim-scripts/L9'
Plug 'rust-lang/rust.vim'
Plug 'vim-scripts/LargeFile'
Plug 'scrooloose/nerdtree'
Plug 'majutsushi/tagbar'
Plug 'vim-scripts/tComment'
Plug 'tomtom/tlib_vim'
Plug 'tpope/vim-bundler'
Plug 'kchmck/vim-coffee-script'
Plug 'tpope/vim-commentary'
Plug 'Lokaltog/vim-distinguished'
Plug 'elixir-editors/vim-elixir'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-projectionist'
Plug 'jnwhiteh/vim-golang'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript'
Plug 'groenewege/vim-less'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-rake'
Plug 'ngmy/vim-rubocop'
Plug 'tpope/vim-rvm'
Plug 'tpope/vim-surround'
Plug 'kana/vim-textobj-user'
Plug 'tpope/vim-unimpaired'
Plug 'posva/vim-vue'
Plug 'wakatime/vim-wakatime'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'dense-analysis/ale'
Plug 'mustache/vim-mustache-handlebars'
Plug 'othree/html5.vim'
Plug 'elmcast/elm-vim'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'vim-airline/vim-airline'
Plug 'ellisonleao/gruvbox.nvim'
Plug 'navarasu/onedark.nvim'
call plug#end()

" Uses gui colors for term nvim
set termguicolors
colorscheme gruvbox
"let g:onedark_config = {
"  \ 'style': 'deep',
"  \ 'toggle_style_key': '<leader>ts',
"  \ 'ending_tildes': v:true,
"  \ 'diagnostics': {
"    \ 'darker': v:false,
"    \ 'background': v:false,
"  \ },
"\ }
"colorscheme onedark

" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Work around a bug with NERDTree and newer versions of Neovim / Vim
let g:NERDTreeMinimalMenu=1

" various prefs
set foldmethod=syntax
set foldlevelstart=99
set nohls
set tabpagemax=50
set sidescroll=1
set sidescrolloff=10
set scrolloff=10
set backspace=indent,eol,start " fixes issue with compiled 7.3 not backspacing properly
set nocompatible
set number
set ruler
set wildmode=list:longest,full
set showmode
set history=50
set nomodeline
set nowrap
set textwidth=0
set nolist
set shiftwidth=2
set shiftround
set expandtab
set tabstop=2

" Use strict mode
let g:ale_elixir_credo_strict = 1

" Fix Ctrl-P hangs with VIM-ALE
autocmd BufEnter ControlP let b:ale_enabled = 0

" Java and Kotlin like 4
autocmd Filetype java setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
autocmd Filetype kotlin setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4

" Swift likes 2
autocmd Filetype swift setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2

" ALE's mix_format has issues respecting the .formatter.exs file, so use vim-mix-format instead.
" let g:mix_format_on_save = 1
" let g:mix_format_silent_errors = 1

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
let g:ale_fixers = {
      \ 'yaml': ['trim_whitespace', 'remove_trailing_lines'],
      \ 'html': ['prettier'],
      \ 'markdown': ['prettier'],
      \ 'mdx': ['prettier'],
      \ 'swift': ['apple-swift-format', 'trim_whitespace', 'remove_trailing_lines'],
      \ 'toml': ['trim_whitespace', 'remove_trailing_lines'],
      \ 'kotlin': ['trim_whitespace', 'remove_trailing_lines'],
      \ 'rust': ['rustfmt', 'trim_whitespace', 'remove_trailing_lines'],
      \ 'javascript': ['prettier'],
      \ 'jsx': ['prettier'],
      \ 'sh': ['shfmt'],
      \ 'typescript': ['prettier'],
      \ 'jsonc': ['prettier'], 
      \ 'javascriptreact': ['prettier'],
      \ 'typescriptreact': ['prettier'],
      \}

let g:ale_sh_shfmt_options = '-i 4'

let g:ale_linters = {
      \'kotlin': ['ktlint'],
      \'swift': ['swiftlint'],
      \'rust': ['analyzer'],
      \'sh': ['shellcheck'],
      \}

let g:ale_rust_rustfmt_options = '--edition 2021'

" This will disable fixing on certain path matches.
" let g:ale_pattern_options = {'env-vars.mdx': {'ale_fixers': []}, 'reference/rest-api': {'ale_fixers': []}}
let g:ale_pattern_options = {
      \ 'elixir/apps/web/assets/tailwind.config.js': {'ale_fixers': []},
      \}

let g:copilot_filetypes = {
      \ '*': v:true,
      \}

" Speed up grep and Ctrl-P
if executable('rg')
  " Optionally use rg for listing files
  let g:ctrlp_user_command = 'rg %s -l --files -g ""'
  let g:ctrlp_use_caching = 0
end

" helpful quickfix navigation
map <C-j> :cn<CR>

" copy yanks to clipboard, only if not in tmux on mac
if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
    set clipboard=unnamed
  elseif s:uname == "Linux\n"
    " Linux
    set clipboard+=unnamedplus
  endif
endif


" NERDTree shortcut
map <C-N> :NERDTreeToggle<CR>

" load different shell
if has("macunix")
  set shell=/bin/zsh
elseif has("unix")
  set shell=/usr/bin/zsh
endif

" ignores
set wildignore+=/swagger-ui/*,/vendor/*,/*tfstate*,/_build,*/tmp/*,/log,*.so,*.swp,*.zip,*/node_modules/*,/deps,_site/*,*/lib/public/js/vendor/*,/components/*,*/builtAssets/*,*/coverage/*
let g:ctrlp_custom_ignore = '\v[\/](\.(git|hg|svn)|log|*tfstate*|_site|solr|_build|swagger-ui|deps|doc|public\/js\/vendor|\.DS_Store|_site|\/components|builtAssets|node_modules)$'
" uncomment to hide the directories from NERDTree
let NERDTreeIgnore=['.*VBoxSVC.*\.log$', '^deps$', '\.tfstate$', '\.backup$', '^node_modules$', '^_build$']

" Do show hidden files in Ctrl-p though
let g:ctrlp_show_hidden=1

" " Return to last edit position when opening files (You want this!)
autocmd BufReadPost *
     \ if line("'\"") > 0 && line("'\"") <= line("$") |
     \   exe "normal! g`\"" |
     \ endif
" " Remember info about open buffers on close
set viminfo^=%

" " Always show the status line
set laststatus=2

" " Format the status line
set statusline=%{winnr()}\ %t[%{strlen(&fenc)?&fenc:'none'},%{&ff}]%h%m%r%y%=%c,%l/%L\ %P

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark' || !has('macunix')
  highlight OverLength ctermbg=188 guibg=#414141
  set background=dark
else
  highlight OverLength ctermbg=188 guibg=#e1e1e1
  set background=light
endif

" Swap visual selection with the previously deleted selection
vnoremap <C-X> <Esc>`.``gvP``P

" Everyone loves italics
highlight Comment cterm=italic gui=italic

" match OverLength /\%81v.\+/
autocmd BufWritePost * match OverLength /\%81v.\+/
autocmd BufWinEnter * match OverLength /\%81v.\+/

" Elixir files can be 99 chars long
autocmd BufWritePost,BufWinEnter *.ex match OverLength /\%99v.\+/
autocmd BufWritePost,BufWinEnter *.exs match OverLength /\%99v.\+/
autocmd BufWritePost,BufWinEnter *.eex match OverLength /\%99v.\+/
autocmd BufWritePost,BufWinEnter *.leex match OverLength /\%99v.\+/
autocmd BufWritePost,BufWinEnter *.heex match OverLength /\%99v.\+/

" Python files can be 88 chars long
autocmd BufWritePost,BufWinEnter *.py match OverLength /\%89v.\+/

" Ruby files can be 120 chars long
autocmd BufWritePost,BufWinEnter *.rb match OverLength /\%119v.\+/
autocmd BufWritePost,BufWinEnter *.erb match OverLength /\%119v.\+/

" Fix syntax highlighting
au BufRead,BufNewFile *.ex,*.exs set filetype=elixir
au BufRead,BufNewFile *.eex,*.heex,*.leex,*.sface,*.lexs set filetype=eelixir
au BufRead,BufNewFile mix.lock set filetype=elixir
