install vim:
  pkg.installed:
    - name: {{ pillar['pkg']['vim'] }}
  

make sure old config entries are removed:
  file.replace:
    - name: '/etc/vimrc'
    - pattern: '\s+"################################################################((.|\s)*)'
    - repl: ''

add new vimrc config:
  file.append:
    - name: '/etc/vimrc'
    - text: |

        "################################################################

        let g:rehash256 = 1       " Molokai Theme
        set autoindent            " Auto-indent new lines
        set backspace=indent,eol,start  " Backspace behaviour
        set cursorcolumn          " Highlight cursor line underneath the cursor vertically.
        set cursorline            " Highlight cursor line underneath the cursor horizontally.
        set expandtab             " Use spaces instead of tabs
        set hlsearch              " Highlight all search results
        set ignorecase            " Always case-insensitive
        set incsearch             " Searches for strings incrementally
        set linebreak             " Break lines at word (requires Wrap lines)
        set number                " Show line numbers
        set ruler                 " Show row and column ruler information
        set shiftwidth=2          " Number of auto-indent spaces
        set showbreak=+++         " Wrap-broken line prefix
        set showcmd               " Show partial command you type in the last line of the screen.
        set showmatch             " Highlight matching brace
        set smartcase             " Enable smart-case search
        set smartindent           " Enable smart-indent
        set smarttab              " Enable smart-tabs
        set softtabstop=2         " Number of spaces per Tab
        set statusline+=%F
        set textwidth=100         " Line wrap (number of cols)
        set undolevels=1000       " Number of undo levels
        set visualbell            " Use visual bell (no beeping)
        set wildmenu              " visual autocomplete for command menu
        syntax on                 " Turn syntax highlighting on.
