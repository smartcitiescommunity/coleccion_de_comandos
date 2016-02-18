#uso $>cr busqueda
alias cr='find . 2>/dev/null -regex '\''.*\.\(php3\|php\|html\|shtml\|htmlx\|js\)$'\'' | xargs grep --color=always -ni -C2'
