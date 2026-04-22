eval "$(/opt/homebrew/bin/brew shellenv)"

if [[ -z "$SKIP_BYOBU" ]]; then
  _byobu_sourced=1 . /opt/homebrew/bin/byobu-launch 2>/dev/null || true
fi
