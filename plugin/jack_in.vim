if exists("g:loaded_jack_in")
  finish
endif
let g:loaded_jack_in = 1

let g:default_lein_task = 'repl'
let g:default_boot_task = 'repl'

let g:jack_in_injections =
      \ {'cider/cider-nrepl':
      \   {'version': '0.20.0',
      \    'middleware': 'cider.nrepl/cider-middleware',
      \    'lein_plugin': 1},
      \  'refactor-nrepl':
      \   {'version': '2.4.0-SNAPSHOT',
      \    'middleware': 'refactor-nrepl.middleware/wrap-refactor'}}

command! -nargs=* Boot call jack_in#boot(<q-args>)
command! -nargs=* Lein call jack_in#lein(<q-args>)
command! -nargs=* Clj call jack_in#clj(<q-args>)
