c() { cd ~/git/$1; }
_c() { _files -W ~/git -/; }
compdef _c c
