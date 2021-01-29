" plugin directory
let g:spacevim_plug_home = '~/.vim/plugged'

" leader key
"let g:spacevim_leader = "<\Space>"

" local leader key
let g:spacevim_localleader = ','

" space-vim layers
let g:spacevim_layers = [
  \ 'fzf',
  \ 'better-defaults',
  \ 'which-key',
  \ 'file-manager',
  \ 'programming',
  \ 'go',
  \ 'javascript',
  \ 'typescript',
  \]

" true color
let g:spacevim_enable_true_color = 1

" nerd fonts
let g:spacevim_nerd_fonts = 0

" own plugins
function! UserInit()
"  Plug 'junegunn/seoul256.vim'
endfunction

function! UserConfig()

" vim-go
let g:go_imports_autosave = 1

endfunction
