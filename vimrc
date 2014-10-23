" TAKEN FROM: https://github.com/andrew8088/dotfiles ----------------------
" TAKEN FROM: https://github.com/martinklepsch/.vim -----------------------
" -------------------------------------------------------------------------
" important ---------------------------------------------------------------
set nocompatible                                      "don't behave like Vi
" moving around, searching and patterns -----------------------------------
set incsearch                             "shows search matches as you type
set showmatch                                     "jump to matching bracket
set smartcase                                          "if caps, watch case
set ignorecase                               "if all lowercase, ignore case
" displaying text ---------------------------------------------------------
set number                                                "put line numbers
set linebreak                                          "wraps between words
set scrolloff=1        "Always display at least one line to the window edge
" syntax, highlighting and spelling ---------------------------------------
syntax on
set hlsearch                                     "highlights search results
set cursorline                              "highlights current cursor line
set background=dark
" messages and info -------------------------------------------------------
set showcmd                                       "show normal etc commands
set ruler                                             "show cursor position
" editing text ------------------------------------------------------------
set nrformats-=octal                  "0-prefixed numbers are still decimal
set backspace=indent,eol,start                          "proper backspacing
set autoread           "auto reload a file when is changed from the outside
" don't do any backups while editing a file -------------------------------
set nobackup
set nowritebackup
set noswapfile
" tabs and indenting ------------------------------------------------------
set autoindent
set smartindent
"set expandtab                                   "put spaces instead of tab
set shiftwidth=4
set softtabstop=4
set tabstop=4
set shiftround                    "round > and < to multiples of shiftwidth
filetype plugin indent on
" folding -----------------------------------------------------------------
set foldmethod=marker
set foldmarker={{{,}}}
" mapping -----------------------------------------------------------------
set timeout                               "Fixes slow O inserts (all three)
set timeoutlen=1000
set ttimeoutlen=100
" command line editing ----------------------------------------------------
set wildmenu
set wildmode=full
" various -----------------------------------------------------------------
set gdefault "includes the g option as default in the substitute :s command
" -------------------------------------------------------------------------
