PATHS=(
  "/usr/local/sbin"
  "/usr/local/bin"
  "./node_modules/.bin"
  "${HOME}/go/bin"
  "${HOME}/.cargo/bin"
  "${HOME}/Library/Python/3.7/bin/"
)

PATH="$(printf "%s:" "${PATHS[@]}")$PATH"


