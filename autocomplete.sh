# _script()
# {
#   _script_commands=$(~/.local/bin/hgrep --complete)

#   local cur
#   COMPREPLY=()
#   cur="${COMP_WORDS[COMP_CWORD]}"
#   COMPREPLY=( $(compgen -W "${_script_commands}" -- ${cur}) )

#   return 0
# }

# complete -d -f -o default -F _script hgrep

## bash compltion location: ~/.local/share/bash-completion/completions/hgrep-completion









_script()
{
    local cur prev opts
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    opts="--help --headers --lines --ignore-case --search --multi-search --file"

    if [[ ${cur} == -* ]] && [[ ! ${prev} == *help* ]] ; then
        COMPREPLY=( $(compgen -W "${opts}" -- ${cur}) )
        return 0
    fi
}

complete -d -f -o default -F _script hgrep