#!/bin/bash

_hgrep_completion()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--help --headers --file --ignore-case --invert-match --lines --count-lines --multi-search --search"
    opts_multi="--multi-search -e"
    #echo ${COMP_LINE}
    # Stop showing options after selecting option that requires arguments
    if [[ ${cur} == -* ]] && [[  ${COMP_LINE} != *--help* && ${COMP_LINE} != *--search* && ${COMP_LINE} != *--multi-search* && ${COMP_LINE} != *-e* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur} ) )
        return 0
    elif [[ ${cur} == -* ]] && [[  ${COMP_LINE} != *--help* && ${COMP_LINE} != *--search* ]] ; then
        COMPREPLY=( $(compgen -W "${opts_multi}" -- ${cur} ) )
        return 0
    fi

}
# Complete options -d for directories -f for files -F then name of function in this script last argument is location of bash script to bash complete for
complete -d -f -o default -F _hgrep_completion hgrep