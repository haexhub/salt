install vim:
  pkg.installed:
    - name: {{ pillar['pkg']['vim'] }}
  
make sure, old config is not in vimrc:
  file.replace:
    - name: '/etc/vimrc'
    - pattern: '\s"#############################(\s|.)*'
    - replace: ''

append new vim config:
  file.append:
    - name: '/etc/vimrc'
    - text: |

        "#############################
        
        syntax on             " Turn syntax highlighting on.
        set wildmenu          " visual autocomplete for command menu
        set visualbell	      " Use visual bell (no beeping)
        set undolevels=1000	  " Number of undo levels
        set textwidth=100     " Line wrap (number of cols)
        set statusline="%f%m%r%h%w [%Y] [0x%02.2B]%< %F%=%4v,%4l %3p%% of %L"
        set softtabstop=2	    " Number of spaces per Tab
        set smarttab          " Enable smart-tabs
        set smartindent	      " Enable smart-indent
        set smartcase	        " Enable smart-case search
        set showmatch	        " Highlight matching brace
        set showcmd           " Show partial command you type in the last line of the screen.
        set showbreak=+++     " Wrap-broken line prefix
        set shiftwidth=2      " Number of auto-indent spaces
        set ruler	            " Show row and column ruler information
        set number	          " Show line numbers
        set nobackup
        set linebreak	        " Break lines at word (requires Wrap lines)
        set incsearch	        " Searches for strings incrementally
        set ignorecase        " Always case-insensitive
        set hlsearch          " Highlight all search results
        set expandtab	        " Use spaces instead of tabs
        set cursorline
        set cursorcolumn
        set backspace=indent,eol,start	" Backspace behaviour
        set autoindent	      " Auto-indent new lines
        let g:rehash256 = 1
        "set foldmethod=indent    " fold based on indent level
        "set foldenable           " enable folding