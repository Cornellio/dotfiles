" Enable pathogen for plugins
execute pathogen#infect()

" Prettify
set number
"color evening
"color elflord

" Indentation
set ts=2
set smartindent
set autoindent
set expandtab
set softtabstop=2
set shiftwidth=2
set smarttab

" Syntax
syntax on
set syntax=shell

" Ignores
set wildignore+=*.class

" Whitespace indicators
set list listchars=tab:>·,trail:·

" Keyboard remapping
" map <F1> <Esc>
" imap <F1> <Esc>

" turn off auto adding comments on next line
" so you can cut and paste reliably
" http://vimdoc.sourceforge.net/htmldoc/change.html#fo-table
set fo=tcq
set nocompatible
set modeline

" set default comment color to cyan instead of darkblue
" which is not very legible on a black background
highlight comment ctermfg=cyan

highlight LiteralTabs ctermbg=darkgreen guibg=darkgreen
match LiteralTabs /\s\	/
highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen
match ExtraWhitespace /\s\+$/

" Show ruler
set ruler

" Set up puppet manifest and spec options
autocmd BufRead,BufNewFile *.pp
  \ set filetype=puppet
autocmd BufRead,BufNewFile *_spec.rb
  \ nmap <F8> :!rspec --color %<CR>

" Enable indentation matching for =>'s
filetype plugin indent on

