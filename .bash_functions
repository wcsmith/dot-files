editor () {
  if [ ! -z "$INSIDE_EMACS" ]; then
    emacsclient "$@"
  else
    emacsclient -t -c -a="" "$@"
  fi
}