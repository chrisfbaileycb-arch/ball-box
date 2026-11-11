#!/usr/bin/env bash
# Launch Slugger Brawl local server
PORT=8080
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
echo "Starting Slugger Brawl on http://localhost:$PORT..."
echo "Open your browser to: http://localhost:$PORT or open $DIR/index.html directly!"
python3 -m http.server $PORT --directory "$DIR"
