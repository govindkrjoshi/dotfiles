(module core
  {require {nvim aniseed.nvim}})

(defn set-commands [commands]
  (each [index command (ipairs commands)]
    (nvim.ex.set command)))

(defn set-linters []
  (set nvim.g.ale_fix_on_save 1)
  (set nvim.g.ale_fixers
       {"*" ["remove_trailing_lines" "trim_whitespace"]
        "javascript" ["eslint"]}))

(defn set-gitgutter-column []
  (set-commands ["signcolumn=yes"])
  (nvim.ex.highlight! "link SignColumn LineNr"))

(defn change-conjure-popup-color []
  (nvim.ex.highlight "NormalFloat ctermbg=black guibg=black"))

(defn persist-undo []
  (set-commands
    ["undofile"
     "undodir=$HOME/.config/nvim/undo"]))

(defn sensible-defaults []
  (nvim.ex.filetype "plugin" "indent" "on")
  (nvim.ex.syntax  "enable")
  (nvim.ex.syntax  "on")
  (set-commands
    ["confirm"
     "cmdheight=1"
     "number"
     "relativenumber"
     "cursorline"
     "encoding=UTF-8"
     "splitright"
     "splitbelow"]))

(defn map-leader []
  (set nvim.g.mapleader ",")
  (set nvim.g.mapleader "\\"))

(defn enable-mouse []
  (set nvim.o.mouse "a"))

(defn smart-searching []
  (set-commands
    ["ignorecase"
     "smartcase"
     "incsearch"
     "hlsearch"]))
(defn enable-sexp-for-fennel []
  (set nvim.g.sexp_filetypes "clojure,scheme,lisp,timl,fennel,janet"))

(defn hard-time []
  (set nvim.g.hardtime_default_on 1)
  (set nvim.g.hardtime_ignore_quickfix 1))

(defn setup-airline []
  (set nvim.g.airline_powerline_fonts 1))

(defn setup []
  (sensible-defaults)
  (persist-undo)
  (change-conjure-popup-color)
  (set-gitgutter-column)
  (map-leader)
  (smart-searching)
  (enable-mouse)
  (setup-airline)
  (hard-time)
  (enable-sexp-for-fennel)
  (set-linters))

(setup)
