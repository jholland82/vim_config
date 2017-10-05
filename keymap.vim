" ----------- Shortcut Key Configuration ----------------------------------
let mapleader = "\<Space>"                      "remap leader to '<Space>' which is much easier than '\'

"Switch to previous file with ',,'
nmap <leader><leader> <C-^>
nmap <leader>l <C-w>l
nmap <leader>h <C-w>h
nmap <leader>k <C-w>k
nmap <leader>j <C-w>j

" ----------- Resize Splits Horizontally ----------------------------------
nmap <leader>= 8<C-w>>
nmap <leader>- 8<C-w><
nnoremap <silent> ,z :bp<CR>
nnoremap <silent> ,x :bn<CR>

" ----------- Plugin Keymappings ------------------------------------------
map <Leader>d :NERDTree<CR>
map <Leader>ct :!ctags -R --exclude=.git --exclude=log --exclude=.svn --exclude=node_modules --exclude=build --exclude=vendor --verbose=yes * <CR>
map <Leader>git :Gitv<CR>

" Exit insert mode and save with jj
imap jj <Esc>:w<CR>

" Supports pasting in from the clipboard
set pastetoggle=<F2>

" Turn text search highlight on/off with F5 key
nnoremap <F3> :set hls!<bar>set hls?<CR>

" Spell check toggle
map <leader>sp :setlocal spell! spelllang=en_us<CR>

"vim-rails keymaps
nmap <Leader>a :A<CR>
nmap <Leader>av :AV<CR>
