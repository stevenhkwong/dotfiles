set tabstop=2
set shiftwidth=2
set directory=/tmp
syntax off
map e :.,$s/^/>
map f !}xjfmt -s 70
map F :.,'a!xjfmt -s 70
map t !}tab2sp
map ^K o/* ^M * keat's pointer^M */^[
map ^L o^L^[
map ^H :1,.!header^[
map  :%!expand -2
map  :%!unexpand -t 2
map ^A :!lfig^[
map  # :.,'a!xjfmt -i
map ^E !}fig
map ^T :.,'a!fmt -t -w

