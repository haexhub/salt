install vim:
  pkg.installed:
    - name: {{ pillar['pkg']['vim'] }}
  

make sure old config entries are removed:
  file.replace:
    - name: '/etc/vimrc'
    - pattern: '"################################################################.*'
    - repl: ''

add new vimrc config:
  file.append:
    - name: '/etc/vimrc'
    - text: |
        "################################################################
        " General
        set number	              " Show line numbers
        set linebreak	            " Break lines at word (requires Wrap lines)
        set showbreak=+++ 	      " Wrap-broken line prefix
        set textwidth=100	        " Line wrap (number of cols)
        set showmatch	            " Highlight matching brace
        set visualbell	          " Use visual bell (no beeping)
        let g:rehash256 = 1
        syntax on
        
        set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
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
        set wildmenu            " visual autocomplete for command menu

        " Advanced
        set ruler	" Show row and column ruler information
        
        set undolevels=1000	" Number of undo levels
        set backspace=indent,eol,start	" Backspace behaviour
