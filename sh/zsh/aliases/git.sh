
alias g="git"

clone() {
  REPO_URL=$1
  pushd $HOME/src
  git clone $REPO_URL
  popd
}
