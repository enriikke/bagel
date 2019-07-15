"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                    NVIM
"                       https://github.com/Enriikke/bagel
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" enable vim settings from the start
set nocompatible

" load all vim plugins
if filereadable(expand('~/.config/nvim/plugins.vim'))
  source ~/.config/nvim/plugins.vim
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Vim Behavior
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

filetype off                                              " reset filetype detection first
filetype plugin indent on                                 " enable filetype detection back
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8  " saving and encoding as utf-8
set ttyfast                                               " Indicate fast terminal conn for faster redraw
set hidden                                                " don't unload buffer when switching away
set modeline                                              " allow per-file settings via modeline
set secure                                                " disable unsafe commands in local .vimrc files
set nobackup nowritebackup noswapfile autoread            " no backup or swap
set hlsearch incsearch ignorecase smartcase               " sensible search
set wildmenu                                              " completion
set backspace=indent,eol,start                            " sane backspace
set ruler                                                 " show cursor position in status bar
set number                                                " show absolute line number of the current line
set scrolloff=10                                          " scroll window 10 lines around the cursor
set textwidth=80                                          " wrap at 80 characters like a valid human
set nocursorline                                          " don't highlight the current line
set nocursorcolumn                                        " don't highlight the current column
set printoptions=paper:letter                             " use letter as the print output format
set guioptions-=T                                         " turn off GUI toolbar (icons)
set guioptions-=r                                         " turn off GUI right scrollbar
set guioptions-=L                                         " turn off GUI left scrollbar
set winaltkeys=no                                         " turn off alt shortcuts
set laststatus=2                                          " always show status bar
set tags=./tags,tags;$HOME                                " check the parent directories for tags, too.
set showcmd                                               " display incomplete commands
set autoread                                              " automatically read changed files
set autowrite                                             " automatically :write before running commands
set autoindent                                            " enable autoindent
set splitbelow                                            " open new horizontal split panes to bottom
set splitright                                            " open new vertical split panes to right
set foldmethod=syntax                                     " fold based on indent
set foldnestmax=10                                        " deepest fold is 10 levels
set nofoldenable                                          " don't fold by default
set foldlevel=1                                           " fold one level
set mouse=""                                              " disable the mouse!
set completeopt=menu,menuone                              " show popup menu, even if there is one entry
set pumheight=10                                          " completion window max size
set lazyredraw                                            " wait to redraw
set clipboard+=unnamed,unnamedplus                        " use the system clipboard for yank/put/delete
" set undofile                                              " enable persitent undo
" set undodir=./tmp/undo                                    " set undo history dir
set noshowmode                                            " don't show the current mode since airline does it
set updatetime=300                                        " better experience for diagnostic messages
set shortmess+=c                                          " don't give |ins-completion-menu| messages


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Formatting
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use 2 space tabs by default. use 4 for go, c, asm. use spaces not tabs for python
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent
autocmd filetype go,c,asm setlocal noexpandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal expandtab smarttab shiftwidth=4 tabstop=8 softtabstop=4

" enable spellchecking for Markdown
autocmd BufRead,BufNewFile *.md set filetype=markdown
autocmd FileType markdown setlocal spell

" spell check git commit messages
autocmd FileType gitcommit setlocal spell

" highlight extra whitespace
" set list listchars=tab:»·,trail:·,nbsp:·

" treat <li> and <p> tags like the block tags they are
let g:html_indent_tags = 'li\|p'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                  Appearance
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

syntax on
set background=dark
set t_Co=256 " 256 colors in terminal
let g:rehash256 = 1

" color scheme
colorscheme nova

" highlight the 81st column
set colorcolumn=+1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Mappings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" use comma as the leader shortcut
let mapleader = ","

" remove white space turds from the ends of lines
noremap <Leader>w :FixWhitespace<cr>

" break a comma-delimited list onto new lines
vmap <Leader>; :s/,/,\r/g<cr>

" rerun previous :command
noremap <Leader>' @:

" switch between the last two files
nnoremap <leader>. <c-^>

" sort selection
noremap <Leader>st :sort<cr>

" generate ctags
noremap <Leader>ct :!ctags -R .<cr><cr>

" reload ~/.vimrc
noremap <Leader>rc :source ~/.config/nvim/init.vim<cr>

" jump to next in quickfix window
map <C-y> :cnext<CR>

" jump to previous in quickfix window
map <C-u> :cprevious<CR>

" close quickfix window
nnoremap <leader>q :cclose<CR>

" underline a line with hyphens (<h2> in Markdown documents)
noremap <Leader>- yypVr-

" underline a line with equals (<h1> in Markdown documents)
noremap <Leader>= yypVr=

" clear latest search pattern
nnore <esc><esc> :let @/ = ""<cr>

" just use vim key bindings
nnoremap <Left> :echoe "use h"<CR>
nnoremap <Right> :echoe "use l"<CR>
nnoremap <Up> :echoe "use k"<CR>
nnoremap <Down> :echoe "use j"<CR>

" hack to fix C-h problem!!!
if has('nvim')
  nmap <BS> <C-W>h
  nmap <bs> :<c-u>TmuxNavigateLeft<cr>
endif

" enter automatically into the file's directory
autocmd BufEnter * silent! lcd %:p:h

" terminal mode mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <C-v><Esc> <Esc>

" buffer management
nmap <leader>l :bn<CR>
nmap <leader>h :bp<CR>
nmap <leader>bq :bp <BAR> bd #<CR>


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                Plugin Helpers
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Fugitive (https://github.com/tpope/vim-fugitive)
noremap <Leader>gs :Gstatus<cr>
noremap <Leader>gc :Gcommit<cr>
noremap <Leader>ga :Gwrite<cr>
noremap <Leader>gl :Glog<cr>
noremap <Leader>gd :Gdiff<cr>
noremap <Leader>gb :Gblame<cr>

" NERDTree (https://github.com/scrooloose/nerdtree)
let g:NERDTreeWinPos='left'
let g:NERDTreeShowHidden=1
let g:NERDTreeIgnore=['\.pyc$', '\.DS_Store$']
noremap <leader>k :NERDTreeToggle<cr>
noremap <leader>nf :NERDTreeFind<cr>

" EasyMotion (https://github.com/easymotion/vim-easymotion)
nmap <space> <Plug>(easymotion-s)

" fzf (https://github.com/junegunn/fzf.vim)
nnoremap <C-p> :Files<Cr>
let g:fzf_colors = {
\   'bg+':     ['bg', 'Normal'],
\   'fg+':     ['fg', 'Statement'],
\   'hl':      ['fg', 'Underlined'],
\   'hl+':     ['fg', 'Underlined'],
\   'info':    ['fg', 'MatchParen'],
\   'pointer': ['fg', 'Special'],
\   'prompt':  ['fg', 'Normal'],
\   'marker':  ['fg', 'MatchParen']
\ }

" Likewise, Files command with preview window
command! -bang -nargs=? -complete=dir Files
  \ call fzf#vim#files(<q-args>, fzf#vim#with_preview(), <bang>0)

" Gists (https://github.com/mattn/gist-vim)
let g:gist_post_private = 1

" vim-run-interactive (https://github.com/christoomey/vim-run-interactive)
nnoremap <Leader>ri :RunInInteractiveShell<space>

" Tagbar (https://github.com/majutsushi/tagbar)
noremap <c-m> :TagbarToggle<cr>

" vim-go (https://github.com/fatih/vim-go)
let g:go_fmt_command = "goimports"
let g:go_list_type = "quickfix"
let g:go_autodetect_gopath = 1
let g:go_auto_sameids = 1
let g:go_auto_type_info = 1

let g:go_highlight_types = 1
let g:go_highlight_structs = 1
let g:go_highlight_fields = 1
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_operators = 1
let g:go_highlight_extra_types = 1
let g:go_highlight_generate_tags = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <C-g> :GoDeclsDir<cr>
au FileType imap <C-g> <esc>:<C-u>GoDeclsDir<cr>

au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>d <Plug>(go-doc)
au FileType go nmap <leader>c <Plug>(go-coverage-toggle)
au FileType go nmap <leader>i <Plug>(go-info)
au FileType go nmap <leader>l <Plug>(go-metalinter)
au FileType go nmap <leader>v <Plug>(go-def-vertical)
au FileType go nmap <leader>a :GoAddTags<CR>

au Filetype go command! -bang GA call go#alternate#Switch(<bang>0, 'edit')
au Filetype go command! -bang GAV call go#alternate#Switch(<bang>0, 'vsplit')
au Filetype go command! -bang GAS call go#alternate#Switch(<bang>0, 'split')
au Filetype go command! -bang GAT call go#alternate#Switch(<bang>0, 'tabe')

" vim-javascript (https://github.com/pangloss/vim-javascript)
let g:javascript_plugin_flow = 1

" ale (https://github.com/w0rp/ale)
let g:ale_sign_error = '✖'
let g:ale_sign_warning = '⚠'
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0
let g:ale_lint_on_save = 1
let g:ale_fix_on_save = 0

let g:ale_linters = {}
let g:ale_linters.ruby = ['rubocop']
let g:ale_linters.erb = ['erb']
let g:ale_linters.javascript = ['prettier', 'eslint']
let g:ale_linters.graphql = ['prettier', 'gqlint']
let g:ale_linters.json = ['prettier', 'jsonlint']
let g:ale_linters.python = ['pycodestyle']

let g:ale_fixers = {}
let g:ale_fixers.ruby = ['rubocop']
let g:ale_fixers.erb = ['erb']
let g:ale_fixers.javascript = ['prettier-eslint']
let g:ale_fixers.graphql = ['prettier', 'gqlint']
let g:ale_fixers.json = ['prettier', 'jsonlint']
let g:ale_fixers.python = ['autopep8']

nmap <silent> <C-e> <Plug>(ale_previous_wrap)
nmap <silent> <C-r> <Plug>(ale_next_wrap)
noremap <Leader>af :ALEFix<cr>

" vim-test (https://github.com/janko-m/vim-test)
let test#strategy = "vimux"
let test#custom_runners = {'Ruby': ['GitHub']}
nmap <Leader>tn :TestNearest<CR>
nmap <Leader>tf :TestFile<CR>

" vim-grepper (https://github.com/mhinz/vim-grepper)
let g:grepper = {}
let g:grepper.tools = ['rg', 'git', 'grep']

nnoremap <Leader>* :Grepper -cword -noprompt -highlight<CR>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" vim-airline (https://github.com/vim-airline/vim-airline)
let g:airline_powerline_fonts = 1
let g:airline#extensions#tmuxline#enabled = 0
let g:airline#extensions#neomake#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline_skip_empty_sections = 1

" vimux (https://github.com/benmills/vimux)
let g:VimuxOrientation = "h"

" vim-startify (https://github.com/mhinz/vim-startif://github.com/mhinz/vim-startify)
let g:startify_change_to_dir = 0
let g:startify_padding_left = 3
let g:startify_lists = [
\ { 'type': 'dir',       'header': ['   MRU '. getcwd()] },
\ { 'type': 'files',     'header': ['   MRU']            },
\ { 'type': 'sessions',  'header': ['   Sessions']       },
\ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
\ { 'type': 'commands',  'header': ['   Commands']       },
\ ]

" vim-signify (https://github.com/mhinz/vim-signify)
let g:signify_vcs_list = [ 'git' ]

" open-browser-github (https://github.com/tyru/open-browser-github.vim)
let g:openbrowser_github_url_exists_check = "ignore"

let g:tex_flavor = "latex"


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               COC Settings
"                     (https://github.com/neoclide/coc.nvim)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Use tab for trigger completion with characters ahead and navigate.
" Use command ':verbose imap <tab>' to make sure tab is not mapped by other plugin.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current position.
" Coc only does snippet and additional edit on confirm.
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Use `[c` and `]c` to navigate diagnostics
nmap <silent> [c <Plug>(coc-diagnostic-prev)
nmap <silent> ]c <Plug>(coc-diagnostic-next)

" Remap keys for gotos
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references

" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight symbol under cursor on CursorHold
autocmd CursorHold * silent call CocActionAsync('highlight')

" Remap for rename current word
nmap <leader>rn <Plug>(coc-rename)

" Remap for format selected region
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

" Remap for do codeAction of selected region, ex: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap for do codeAction of current line
nmap <leader>ac  <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Use <tab> for select selections ranges, needs server support, like: coc-tsserver, coc-python
nmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <TAB> <Plug>(coc-range-select)
xmap <silent> <S-TAB> <Plug>(coc-range-select-backword)

" Use `:Format` to format current buffer
command! -nargs=0 Format :call CocAction('format')

" Use `:Fold` to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" use `:OR` for organize import of current buffer
command! -nargs=0 OR   :call     CocAction('runCommand', 'editor.action.organizeImport')

" Add status line support, for integration with other plugin, checkout `:h coc-status`
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}
