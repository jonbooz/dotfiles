#!/usr/bin/env bash
#
# Link this repo's dotfiles into ~ as listed in ../links (OS SOURCE TARGET).
# Each target becomes a symlink into this checkout, so editing the live file
# edits the repo. Anything already at a target that isn't that link is moved
# aside to TARGET.bak-<time>. Safe to re-run. (system-setup links these with
# its own dotfiles module instead, which also reports drift.)
set -u
ROOT=$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd -P)
case "$(uname -s)" in Darwin) OS=mac ;; *) OS=linux ;; esac
STAMP=$(date +%Y%m%d-%H%M%S)

link() {
  local src=$1 dst=$2
  [[ -L "$dst" && "$(readlink "$dst")" == "$src" ]] && return 0
  mkdir -p "$(dirname "$dst")"
  if [[ -e "$dst" || -L "$dst" ]]; then
    mv "$dst" "$dst.bak-$STAMP" && echo "moved aside: $dst.bak-$STAMP"
  fi
  ln -s "$src" "$dst" && echo "linked: $dst -> $src"
}

while read -r os src dst; do
  case "$os" in '' | '#'*) continue ;; esac
  [[ "$os" == all || "$os" == "$OS" ]] || continue
  if [[ "$dst" == */ ]]; then
    for match in "$ROOT"/$src; do
      [[ -e "$match" ]] && link "$match" "$HOME/$dst$(basename "$match")"
    done
  else
    link "$ROOT/$src" "$HOME/$dst"
  fi
done <"$ROOT/links"

if [[ $OS == mac ]] && command -v skhd >/dev/null; then
  skhd --restart-service
fi
