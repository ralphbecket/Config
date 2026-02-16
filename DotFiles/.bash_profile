# Run in the login shell.

BASHRC_D=~/.config/bashrc.d
if [ -d ${BASHRC_D} ]
then
    for bash_rc in ${BASHRC_D}/*
    do
        . ${bash_rc} || echo "Error in ${bash_rc}"
    done
fi

