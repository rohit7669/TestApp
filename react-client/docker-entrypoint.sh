#!/bin/sh
set -e

# Dynamically create env.js based on environment variable at container start
cat <<EOF > /usr/share/nginx/html/env.js
window._env_ = {
  REACT_APP_API_URL: "${REACT_APP_API_URL:-/api}"
};
EOF

# Start nginx
exec "$@"