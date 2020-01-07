tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}

alias t=task
alias tick=tickle
alias think="tickle +1d"

alias th="taskhelper"
alias in="taskhelper in"
alias greg="taskhelper greg"
alias northon="taskhelper northon"
alias amplitude="taskhelper amplitude"
alias rethink="taskhelper rethink"
alias upcoming="t due.before:\"$(date -v "+7d" +"%Y-%m-%d")\""

alias tw="timew"
