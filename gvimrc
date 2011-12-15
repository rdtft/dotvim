color vwilight
set guifont=Bitstream\ Vera\ Sans\ Mono:h12
set linespace=2

set visualbell      " don't beep

set guioptions-=T   " start without the toolbar
set guioptions-=rL  " disable scrollbar

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert
endif
