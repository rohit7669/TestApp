#!/bin/sh
set -e

# Create env.js dynamically
cat <<EOF > /usr/share/nginx/html/env.js
window._env_ = {
  REACT_APP_API_URL: "${REACT_APP_API_URL:-/api}"
};
EOF

exec "$@"