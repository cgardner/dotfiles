tickle () {
    deadline=$1
    shift
    in +tickle wait:$deadline $@
}

rethink () {
  action=$1
  if [ -n "$action" ]; then
    shift
    task add +work +@computer proj:"Athena > Implementation Re-Think" $@
    return 0;
  fi
  
  task athena;
}

amplitude () {
  action=$1
  if [ -n "$action" ]; then
    shift
    task add +work +@computer proj:"Flex > Amplitude" $@
    return 0;
  fi
  
  task amplitude;
}

project() {
  PROJECT_NAME=$1
  REPORT_NAME=$2
  shift 2

  if [ "$1" == "add" ]; then
    shift
    task add +work proj:"$PROJECT_NAME" $@
    return 0;
  fi
  task $REPORT_NAME
}

alias t=task
alias in="t add +in"
alias tick=tickle
alias rethink=rethink
alias think="tickle +1d"
alias book="t add project:\"Personal > Books\""
alias personal="t add project:Personal"
alias greg="project \"1:1 > Greg\" \"greg\""
alias northon="project \"1:1 > Northon\" northon"
alias 1:1="t 1:1"
alias upcoming="t due \< \"$(date -v "+7d" +"%Y-%m-%d")\""
