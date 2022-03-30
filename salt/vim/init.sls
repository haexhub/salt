install vim:
  pkg.installed:
    - name: {{ pillar['pkg']['vim'] }}
  
make sure, old config is not in vimrc:
  file.replace:
    - name: '/etc/vimrc'
    - pattern: '"#############################.*'
    - replace: ''

append new vim config:
  file.append:
    - name: '/etc/vimrc'
    - text: |
        "#############################
        " General
        set number	" Show line numbers
        set linebreak	" Break lines at word (requires Wrap lines)
        set showbreak=+++ 	" Wrap-broken line prefix
        set textwidth=100	" Line wrap (number of cols)
        set showmatch	" Highlight matching brace
        set visualbell	" Use visual bell (no beeping)
        syntax on " Turn syntax highlighting on.

        set hlsearch	" Highlight all search results
        set smartcase	" Enable smart-case search
        set ignorecase	" Always case-insensitive
        set incsearch	" Searches for strings incrementally
        
        set autoindent	" Auto-indent new lines
        set expandtab	" Use spaces instead of tabs
        set shiftwidth=2	" Number of auto-indent spaces
        set smartindent	" Enable smart-indent
        set smarttab	" Enable smart-tabs
        set softtabstop=2	" Number of spaces per Tab
        set cursorline
        set cursorcolumn

        " Advanced
        set ruler	" Show row and column ruler information
        
        set undolevels=1000	" Number of undo levels
        set backspace=indent,eol,start	" Backspace behaviour
        set nobackup
        set showcmd " Show partial command you type in the last line of the screen.