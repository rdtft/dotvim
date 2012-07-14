set background=light
set guifont=Menlo\ Regular:h12
color solarized

set visualbell      " don't beep

set linespace=2

set guioptions-=T   " start without the toolbar
set guioptions-=rL  " disable scrollbar

if has("gui_macvim")
  " Fullscreen takes up entire screen
  set fuoptions=maxhorz,maxvert
endif
