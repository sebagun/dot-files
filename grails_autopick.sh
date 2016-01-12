# taken from: https://gist.github.com/dnoseda/4629920
# for sdkman to autopick grails version only when cd in a grails project
alias autopick='AUTO_VERSION=`grep app.grails.version application.properties`; AUTO_VERSION=${AUTO_VERSION:19}; sdk use grails $AUTO_VERSION'
chdir() {
  local action="$1"; shift
  case "$action" in
    # popd needs special care to not pass empty string instead of no args
    popd) [[ $# -eq 0 ]] && builtin popd || builtin popd "$*" ;;
    cd)
      if [ $# -eq 0 ]
      then
        builtin $action "$HOME" ;
      else
        builtin $action "$*";
      fi;;
    pushd) builtin $action "$*" ;;
    *) return ;;
  esac
  # now do stuff in the new pwd

  if [ -f ./application.properties ]
  then
    autopick
  fi
}
alias cd='chdir cd'
alias pushd='chdir pushd'
alias popd='chdir popd'
