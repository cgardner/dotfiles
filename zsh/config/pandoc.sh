pdgen () {
  INPUT=$1
  OUTPUT=$2

  if [ -z "$OUTPUT" ]; then
    OUTPUT="pdf"
  fi

  BASENAME=`basename  ${INPUT%.*}`
  $(which pandoc) $INPUT --include-in-header=$HOME/src/work-notes/markdown/github-embed.html -s --highlight-style=haddock --pdf-engine=wkhtmltopdf -o $HOME/Documents/$BASENAME.$OUTPUT
}
