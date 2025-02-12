""
" Airline_theme: softera v0.1.0
"

" URL: https://github.com/soft-aesthetic/soft-era-vim
" Author: Colors &lt;@animalphase&gt; / Port &lt;@ngscheurich&gt;

""

let g:airline#themes#softera#palette = {}

let s:normal1 = [ "#b4addf", "#a29acb", 146, 140 ]
let s:normal2 = [ "#a29acb", "#b4addf", 140, 146 ]
let s:normal3 = [ "#cfc8f4", "#cfc8f4", 189, 189 ]
let g:airline#themes#softera#palette.normal = airline#themes#generate_color_map(s:normal1, s:normal2, s:normal3)

let s:insert1 = [ "#25b7b8", "#1f9697", 37, 30 ]
let s:insert2 = [ "#1f9697", "#25b7b8", 30, 37 ]
let s:insert3 = [ "#98c4ba", "#98c4ba", 250, 250 ]
let g:airline#themes#softera#palette.insert = airline#themes#generate_color_map(s:insert1, s:insert2, s:insert3)

let s:replace1 = [ "#dd698c", "#b55673", 168, 131 ]
let s:replace2 = [ "#b55673", "#dd698c", 131, 168 ]
let s:replace3 = [ "#db90a7", "#db90a7", 175, 175 ]
let g:airline#themes#softera#palette.replace = airline#themes#generate_color_map(s:replace1, s:replace2, s:replace3)

let s:visual1 = [ "#cabf9a", "#a69d7f", 180, 144 ]
let s:visual2 = [ "#a69d7f", "#cabf9a", 144, 180 ]
let s:visual3 = [ "#ede7c5", "#ede7c5", 254, 254 ]
let g:airline#themes#softera#palette.visual = airline#themes#generate_color_map(s:visual1, s:visual2, s:visual3)

let s:inactive1 = [ "#948484", "#f2edec", 102, 255 ]
let s:inactive2 = [ "#948484", "#f2edec", 102, 255 ]
let s:inactive3 = [ "#948484", "#f2edec", 102, 255 ]
let g:airline#themes#softera#palette.inactive = airline#themes#generate_color_map(s:inactive1, s:inactive2, s:inactive3)

