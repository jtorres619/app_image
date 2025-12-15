#!/bin/sh
set -e

echo "✔ Node version"
node --version

echo "✔ Non-root user"
[ "$(id -u)" -ne 0 ]

echo "✔ App entrypoint exists"
test -f src/server.js

echo "✔ Server starts"
node src/server.js &
sleep 2
kill $!
