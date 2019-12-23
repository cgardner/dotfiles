PATHS=(
  "./node_modules/.bin"
  "${HOME}/go/bin"
  "${HOME}/.cargo/bin"
  "${HOME}/Library/Python/3.7/bin/"
  "/usr/local/sbin"
  "/usr/local/bin"
)

PATH="$(printf "%s:" "${PATHS[@]}")$PATH"


