if exists('b:did_ftplugin')
  finish
endif
let b:did_ftplugin = 1

let s:save_cpo = &cpo
set cpo&vim

" Here we tell vim what v language is like

let &cpo = s:save_cpo
unlet s:save_cpo
