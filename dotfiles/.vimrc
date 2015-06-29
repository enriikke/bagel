"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                     VIM
"                       https://github.com/Enriikke/bagel
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use Vim settings, rather than Vi settings. This setting must be as early as
" possible, as it has side effects.
set nocompatible | filetype indent plugin on | syn on

" Leader
let mapleader = "\\"

" Load all vim plugins using Vundle
if filereadable(expand("~/.vimrc.plugins"))
  source ~/.vimrc.plugins
endif


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Vim Behavior
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

set hidden                                                " don't unload buffer when switching away
set modeline                                              " allow per-file settings via modeline
set secure                                                " disable unsafe commands in local .vimrc files
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8  " saving and encoding
set nobackup nowritebackup noswapfile autoread            " no backup or swap
set hlsearch incsearch ignorecase smartcase               " search
set wildmenu                                              " completion
set backspace=indent,eol,start                            " sane backspace
set clipboard=unnamed,unnamedplus                         " use the system clipboard for yank/put/delete
set ruler                                                 " show cursor position in status bar
set number                                                " show absolute line number of the current line
set scrolloff=10                                          " scroll the window so we can always see 10 lines around the cursor
set textwidth=80                                          " wrap at 80 characters like a valid human
set cursorline                                            " highlight the current line
" set cursorcolumn                                          " highlight the current column
set printoptions=paper:letter                             " use letter as the print output format
set guioptions-=T                                         " turn off GUI toolbar (icons)
set guioptions-=r                                         " turn off GUI right scrollbar
set guioptions-=L                                         " turn off GUI left scrollbar
set winaltkeys=no                                         " turn off stupid fucking alt shortcuts
set laststatus=2                                          " always show status bar
set tags=./tags,tags;$HOME                                " check the parent directories for tags, too.
set showcmd                                               " display incomplete commands
set autowrite                                             " Automatically :write before running commands
set splitbelow                                            " Open new split panes to bottom
set splitright                                            " Open new split panes to right


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
set t_Co=256 " 256 colors in terminal

" Color scheme
colorscheme atom-dark-256

" highlight the 81st column
set colorcolumn=+1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Formatting
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype plugin indent on
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent
autocmd filetype c,asm,python setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType make setlocal noexpandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Plugin Helpers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" fugitive shortcuts
noremap <Leader>gs :Gstatus<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>ga :Gwrite<cr>
noremap <Leader>gl :Glog<cr>
noremap <Leader>gd :Gdiff<cr>
noremap <Leader>gb :Gblame<cr>

" NERDTree
let NERDTreeWinPos='left'
let NERDTreeShowHidden=1
noremap <c-n> :NERDTreeToggle<cr>
noremap <Leader>nf :NERDTreeFind<cr>

" EasyMotion
nmap <space> <Plug>(easymotion-s)

" UltiSnips
let g:UltiSnipsExpandTrigger="<c-j>"

" Rspec
nnoremap <Leader>t :call RunCurrentSpecFile()<CR>
nnoremap <Leader>s :call RunNearestSpec()<CR>
nnoremap <Leader>l :call RunLastSpec()<CR>

" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" ctrlp.vim
let g:ctrlp_max_files = 0

" Syntastic
let g:syntastic_check_on_open=1
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Tagbar
noremap <c-m> :TagbarToggle<cr>

" Gists
let g:gist_post_private = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use single quote as additional range key
noremap ' `

" Rerun previous :command
noremap <Leader>' @:

" Underline a line with hyphens (<h2> in Markdown documents)
noremap <Leader>- yypVr-

" Underline a line with equals (<h1> in Markdown documents)
noremap <Leader>= yypVr=

" Remove white space turds from the ends of lines
noremap <Leader>W :FixWhitespace<cr>

" Delete ALL THE BUFFERS!
noremap <Leader>bd :1,999bd<cr>:NERDTree<cr>:NERDTree<cr>

" cd current window to parent directory of file
noremap <Leader>cd :lcd %:h<cr>:pwd<cr>

" Copy path of current file to clipboard
noremap <Leader>cp :let @+ = expand("%")<cr>

" Generate ctags
noremap <Leader>ct :!ctags -R .<cr><cr>

" Reload ~/.vimrc
noremap <Leader>rc :source ~/.vimrc<cr>

" Sort selection
noremap <Leader>s :sort<cr>

" Put contents of parentheses on their own newline and reindent (must position
" cursor inside parentheses in normal mode first).
nmap <Leader>( ci(<cr><esc>Pa<cr><esc>Vkk=

" Break a comma-delimited list onto new lines
vmap <Leader>, :s/,/,\r/g<cr>

" Switch between the last two files
nnoremap <leader><leader> <c-^>

" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Run commands that require an interactive shell
nnoremap <Leader>r :RunInInteractiveShell<space>

" Quicker window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    Extra
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Cucumber navigation commands
  autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
  autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-
augroup END
