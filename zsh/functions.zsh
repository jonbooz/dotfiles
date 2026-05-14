
# compression
compress() {
  [[ -z "$1" ]] && { echo "Usage: compress <directory>"; return 1; }
  tar -czf "${1%/}.tar.gz" "$1"
}

decompress() {
  [[ -z "$1" ]] && { echo "Usage: decompress <file.tar.gz> [destination]"; return 1; }
  if [[ -n "$2" ]]; then
    tar -xzf "$1" -C "$2"
  else
    tar -xzf "$1"
  fi
}

# SSH port forwarding
fip() {
  [[ -z "$1" || -z "$2" ]] && { echo "Usage: fip <user@host> <port> [port ...]"; return 1; }
  local host="$1"
  shift
  local args=()
  for port in "$@"; do
    args+=(-L "${port}:localhost:${port}")
  done
  ssh -fN "${args[@]}" "$host"
}

dip() {
  [[ -z "$1" ]] && { echo "Usage: dip <port> [port ...]"; return 1; }
  for port in "$@"; do
    local pid
    pid=$(pgrep -f "ssh.*-L ${port}:")
    if [[ -n "$pid" ]]; then
      kill "$pid" && echo "Disconnected port $port (PID $pid)"
    else
      echo "No active forward found for port $port"
    fi
  done
}

lip() {
  ps aux | grep '[s]sh.*-L'
}


