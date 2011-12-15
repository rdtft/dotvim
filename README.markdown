## Installation:

Prerequisites: **git**, **make**

1. Clone this repo into ".vim"
``` git clone https://github.com/ryuk/dotvim ~/.vim```
2. Go into ".vim" and run "make"
```cd ~/.vim; make```

## Features:

* 2 spaces, no tabs
* incremental, case-insensitive search
* 'Leader' character mapped to "," (comma)
* `,,` switches between two last buffers
* `jj` in insert mode works as `ESC`
* `;` in normal mode works as `:`
* `<C-j/k/h/l>` switches between windows (no need to prepend `<C-w>`)

## Plugins:

* ack
* commentary
* ruby
* fugitive
* surround
* endwise
* gist
* haml
* scss
* javascript
* coffee-script

This configuration based on [mislav/vimfiles](https://github.com/mislav/vimfiles)
