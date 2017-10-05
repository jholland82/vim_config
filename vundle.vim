set nocompatible               " be iMproved

filetype off                   " required!

call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-endwise'
Plug 'pangloss/vim-javascript'
Plug 'bling/vim-airline'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rails'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'jelera/vim-javascript-syntax'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'JavaScript-Indent'
Plug 'gregsexton/gitv'
Plug 'vim-scripts/ZoomWin'
Plug 'techlivezheng/vim-plugin-minibufexpl'
Plug 'elzr/vim-json'
Plug 'vim-ruby/vim-ruby'
Plug 'elixir-lang/vim-elixir'
Plug 'carlosgaldino/elixir-snippets'
Plug 'christoomey/vim-tmux-runner'
Plug 'thoughtbot/vim-rspec'
Plug 'rking/ag.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-markdown'
Plug 'vim-scripts/AutoComplPop'
Plug 'ntpeters/vim-better-whitespace'
"Plug 'liuchengxu/space-vim-dark'
"Plug 'gabesoft/vim-ags'
"Plug 'skammer/vim-ruby-complexity'
Plug 'sheerun/vim-polyglot'

call plug#end()

filetype plugin indent on

let g:miniBufExplAutoStart = 1
let g:miniBufExplBuffersNeeded = 1

" MiniBufExpl Colors
hi MBENormal               guifg=#808080 guibg=fg
hi MBEChanged              guifg=#CD5907 guibg=fg
hi MBEVisibleNormal        guifg=#5DC2D6 guibg=fg
hi MBEVisibleChanged       guifg=#F1266F guibg=fg
hi MBEVisibleActiveNormal  guifg=#A6DB29 guibg=fg
hi MBEVisibleActiveChanged guifg=#F1266F guibg=fg

let g:airline_powerline_fonts=1
let g:airline_theme='dark'
let g:airline_section_x='' "filetype by default
let g:airline_section_y='' "encoding by default

"NERDTree
let NERDTreeShowLineNumbers=1
let g:nerdtree_tabs_focus_on_files=1
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
"let NERDTreeQuitOnOpen = 1
let NERDTreeShowHidden = 1
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
 
" Rspec.vim / vim-tmux-runner
" https://vimeo.com/126420226
let g:rspec_command = "call VtrSendCommand('rspec {spec}', 1)"
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rn :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
nnoremap <leader>fr :VtrFocusRunner<cr>
nnoremap <leader>kr :VtrKillRunner<cr>
nnoremap <leader>sl :VtrSendLinesToRunner<cr>
nnoremap <leader>dr :VtrSendCtrlD<cr>
nnoremap <leader>ar :VtrAttachToPane<cr>

let g:VtrStripLeadingWhitespace = 0
let g:VtrClearEmptyLines = 0
let g:VtrAppendNewline = 1

let g:ag_working_path_mode="r"
autocmd BufNewFile,BufReadPost *.md set filetype=markdown
