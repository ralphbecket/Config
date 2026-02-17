
for i in vim nvim
do
    if [ -n $(type -p ${i}) ]
    then
        alias vi=${i}
        EDITOR=${i}
        git config set --global core.editor ${i}
    fi
done
[ -z $(type -p vim) ] && alias vim=vi

#alias ls="ls --color=auto"
#alias la="ls --color=auto -a"
#alias ll="ls --color=auto -la"
