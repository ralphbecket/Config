
for i in vi vim nvim; do [ -n $(type -p ${i}) ] && alias vi=${i}; done
[ -z ${type -p vim} ] && alias vim=vi

